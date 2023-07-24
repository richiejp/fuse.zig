const std = @import("std");
const log = std.log;
const mem = std.mem;
const E = std.os.linux.E;
const fuse = @import("fuse31.zig");

const filename = "/hello/zig";
const contents = "Alright, mate!";

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

    if (mem.eql(u8, "/", p)) {
        st.st_mode = fuse.S_IFDIR | 0o0755;
        st.st_nlink = 2;
    } else if (mem.eql(u8, filename, p)) {
        st.st_mode = fuse.S_IFREG | 0o0444;
        st.st_nlink = 1;
        st.st_size = contents.len;
    } else {
        return @intFromEnum(E.NOENT);
    }

    stat.?.* = st;

    return 0;
}

const ops = mem.zeroInit(fuse.struct_fuse_operations, .{
    .init = init,
    .getattr = getattr,
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
