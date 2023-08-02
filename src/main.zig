const std = @import("std");
const log = std.log;
const mem = std.mem;
const E = std.os.linux.E;
const fuse = @import("fuse31.zig");

// May not be the correct size depending on the target because of the
// bitfield: https://github.com/ziglang/zig/issues/1499
const FileInfo = extern struct {
    flags: c_int,
    bitfield: u32,
    padding2: u32,
    fh: u64,
    lock_owner: u64,
    poll_events: u32,
};

const filename: [:0]const u8 = "hello";
const contents = "Alright, mate!\n";

fn cErr(err: E) c_int {
    const n: c_int = @intFromEnum(err);

    return -n;
}

fn init(
    _: [*c]fuse.struct_fuse_conn_info,
    cfg: [*c]fuse.struct_fuse_config,
) callconv(.C) ?*anyopaque {
    cfg.*.kernel_cache = 1;

    return null;
}

fn getattr(
    path: [*c]const u8,
    stat: ?*fuse.struct_stat,
    _: ?*fuse.struct_fuse_file_info,
) callconv(.C) c_int {
    var st = mem.zeroes(fuse.struct_stat);
    const p = mem.span(path);

    log.info("stat: {s}", .{p});

    if (mem.eql(u8, "/", p)) {
        st.st_mode = fuse.S_IFDIR | 0o0755;
        st.st_nlink = 2;
    } else if (mem.eql(u8, filename, p[1..])) {
        st.st_mode = fuse.S_IFREG | 0o0444;
        st.st_nlink = 1;
        st.st_size = contents.len;
    } else {
        return cErr(E.NOENT);
    }

    stat.?.* = st;

    return 0;
}

fn readdir(
    path: [*c]const u8,
    buf: ?*anyopaque,
    filler: fuse.fuse_fill_dir_t,
    _: fuse.off_t,
    _: ?*fuse.struct_fuse_file_info,
    _: fuse.enum_fuse_readdir_flags,
) callconv(.C) c_int {
    const p = mem.span(path);

    log.info("readdir: {s}", .{p});

    if (!mem.eql(u8, "/", p))
        return cErr(E.NOENT);

    const names = [_][:0]const u8{ ".", "..", filename };

    for (names) |n| {
        const ret = filler.?(buf, n, null, 0, 0);

        if (ret > 0)
            log.err("readdir: {s}: {}", .{ p, ret });
    }

    return 0;
}

fn open(
    path: [*c]const u8,
    file_info: ?*fuse.struct_fuse_file_info,
) callconv(.C) c_int {
    const p = mem.span(path);
    const fi: *FileInfo = @ptrCast(@alignCast(file_info.?));

    log.info("open: {s}", .{p});

    if (!mem.eql(u8, filename, p[1..]))
        return cErr(E.NOENT);

    if ((fi.flags & fuse.O_ACCMODE) != fuse.O_RDONLY)
        return cErr(E.ACCES);

    return 0;
}

fn read(
    path: [*c]const u8,
    buf: [*c]u8,
    size: usize,
    offset: fuse.off_t,
    _: ?*fuse.struct_fuse_file_info,
) callconv(.C) c_int {
    const p = mem.span(path);
    const off: usize = @intCast(offset);

    log.info("read: {s},size={},offset={}", .{ p, size, offset });

    if (!mem.eql(u8, filename, p[1..]))
        return cErr(E.NOENT);

    if (off >= contents.len)
        return 0;

    const s = if (off + size > contents.len)
        contents.len - off
    else
        size;

    @memcpy(buf[0..s], contents[off..]);

    return @intCast(s);
}

const ops = mem.zeroInit(fuse.struct_fuse_operations, .{
    .init = init,
    .getattr = getattr,
    .readdir = readdir,
    .open = open,
    .read = read,
});

pub fn main() !u8 {
    log.info("Zig hello FUSE", .{});

    const ret = fuse.fuse_main_real(
        @intCast(std.os.argv.len),
        @ptrCast(std.os.argv.ptr),
        &ops,
        @sizeOf(@TypeOf(ops)),
        null,
    );

    return switch (ret) {
        0 => 0,
        1 => error.FuseParseCmdline,
        2 => error.FuseMountpoint,
        3 => error.FuseNew,
        4 => error.FuseMount,
        5 => error.FuseDaemonize,
        6 => error.FuseSession,
        7 => error.FuseLoopCfg,
        8 => error.FuseEventLoop,
        else => error.FuseUnknown,
    };
}
