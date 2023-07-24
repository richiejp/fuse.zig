pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct_fuse_opt = extern struct {
    templ: [*c]const u8,
    offset: c_ulong,
    value: c_int,
};
pub const struct_fuse_args = extern struct {
    argc: c_int,
    argv: [*c][*c]u8,
    allocated: c_int,
};
pub const fuse_opt_proc_t = ?*const fn (?*anyopaque, [*c]const u8, c_int, [*c]struct_fuse_args) callconv(.C) c_int;
pub extern fn fuse_opt_parse(args: [*c]struct_fuse_args, data: ?*anyopaque, opts: [*c]const struct_fuse_opt, proc: fuse_opt_proc_t) c_int;
pub extern fn fuse_opt_add_opt(opts: [*c][*c]u8, opt: [*c]const u8) c_int;
pub extern fn fuse_opt_add_opt_escaped(opts: [*c][*c]u8, opt: [*c]const u8) c_int;
pub extern fn fuse_opt_add_arg(args: [*c]struct_fuse_args, arg: [*c]const u8) c_int;
pub extern fn fuse_opt_insert_arg(args: [*c]struct_fuse_args, pos: c_int, arg: [*c]const u8) c_int;
pub extern fn fuse_opt_free_args(args: [*c]struct_fuse_args) void;
pub extern fn fuse_opt_match(opts: [*c]const struct_fuse_opt, opt: [*c]const u8) c_int;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __builtin_va_list;
pub const FUSE_LOG_EMERG: c_int = 0;
pub const FUSE_LOG_ALERT: c_int = 1;
pub const FUSE_LOG_CRIT: c_int = 2;
pub const FUSE_LOG_ERR: c_int = 3;
pub const FUSE_LOG_WARNING: c_int = 4;
pub const FUSE_LOG_NOTICE: c_int = 5;
pub const FUSE_LOG_INFO: c_int = 6;
pub const FUSE_LOG_DEBUG: c_int = 7;
pub const enum_fuse_log_level = c_uint;
pub const fuse_log_func_t = ?*const fn (enum_fuse_log_level, [*c]const u8, [*c]struct___va_list_tag) callconv(.C) void;
pub extern fn fuse_set_log_func(func: fuse_log_func_t) void;
pub extern fn fuse_log(level: enum_fuse_log_level, fmt: [*c]const u8, ...) void;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const int_fast8_t = i8;
pub const int_fast64_t = i64;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast64_t = u64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast16_t = i32;
pub const int_fast32_t = i32;
pub const uint_fast16_t = u32;
pub const uint_fast32_t = u32;
pub const register_t = c_long;
pub const time_t = c_long;
pub const suseconds_t = c_long;
pub const u_int64_t = c_ulong;
pub const mode_t = c_uint;
pub const nlink_t = c_ulong;
pub const off_t = c_long;
pub const ino_t = c_ulong;
pub const dev_t = c_ulong;
pub const blksize_t = c_long;
pub const blkcnt_t = c_long;
pub const fsblkcnt_t = c_ulong;
pub const fsfilcnt_t = c_ulong;
pub const timer_t = ?*anyopaque;
pub const clockid_t = c_int;
pub const clock_t = c_long;
pub const pid_t = c_int;
pub const id_t = c_uint;
pub const uid_t = c_uint;
pub const gid_t = c_uint;
pub const key_t = c_int;
pub const useconds_t = c_uint;
pub const struct___pthread = opaque {};
pub const pthread_t = ?*struct___pthread;
pub const pthread_once_t = c_int;
pub const pthread_key_t = c_uint;
pub const pthread_spinlock_t = c_int;
pub const pthread_mutexattr_t = extern struct {
    __attr: c_uint,
};
pub const pthread_condattr_t = extern struct {
    __attr: c_uint,
};
pub const pthread_barrierattr_t = extern struct {
    __attr: c_uint,
};
pub const pthread_rwlockattr_t = extern struct {
    __attr: [2]c_uint,
};
const union_unnamed_1 = extern union {
    __i: [14]c_int,
    __vi: [14]c_int,
    __s: [7]c_ulong,
};
pub const pthread_attr_t = extern struct {
    __u: union_unnamed_1,
};
const union_unnamed_2 = extern union {
    __i: [10]c_int,
    __vi: [10]c_int,
    __p: [5]?*volatile anyopaque,
};
pub const pthread_mutex_t = extern struct {
    __u: union_unnamed_2,
};
const union_unnamed_3 = extern union {
    __i: [12]c_int,
    __vi: [12]c_int,
    __p: [6]?*anyopaque,
};
pub const pthread_cond_t = extern struct {
    __u: union_unnamed_3,
};
const union_unnamed_4 = extern union {
    __i: [14]c_int,
    __vi: [14]c_int,
    __p: [7]?*anyopaque,
};
pub const pthread_rwlock_t = extern struct {
    __u: union_unnamed_4,
};
const union_unnamed_5 = extern union {
    __i: [8]c_int,
    __vi: [8]c_int,
    __p: [4]?*anyopaque,
};
pub const pthread_barrier_t = extern struct {
    __u: union_unnamed_5,
};
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const caddr_t = [*c]u8;
pub const u_char = u8;
pub const u_short = c_ushort;
pub const ushort = c_ushort;
pub const u_int = c_uint;
pub const uint = c_uint;
pub const u_long = c_ulong;
pub const ulong = c_ulong;
pub const quad_t = c_longlong;
pub const u_quad_t = c_ulonglong;
pub fn __bswap16(arg___x: u16) callconv(.C) u16 {
    var __x = arg___x;
    return @as(u16, @bitCast(@as(c_short, @truncate((@as(c_int, @bitCast(@as(c_uint, __x))) << @intCast(8)) | (@as(c_int, @bitCast(@as(c_uint, __x))) >> @intCast(8))))));
}
pub fn __bswap32(arg___x: u32) callconv(.C) u32 {
    var __x = arg___x;
    return (((__x >> @intCast(24)) | ((__x >> @intCast(8)) & @as(u32, @bitCast(@as(c_int, 65280))))) | ((__x << @intCast(8)) & @as(u32, @bitCast(@as(c_int, 16711680))))) | (__x << @intCast(24));
}
pub fn __bswap64(arg___x: u64) callconv(.C) u64 {
    var __x = arg___x;
    return @as(u64, @bitCast(@as(c_ulong, @truncate(((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bswap32(@as(u32, @bitCast(@as(c_uint, @truncate(__x)))))))) +% @as(c_ulonglong, 0)) << @intCast(32)) | @as(c_ulonglong, @bitCast(@as(c_ulonglong, __bswap32(@as(u32, @bitCast(@as(c_uint, @truncate(__x >> @intCast(32)))))))))))));
}
pub const struct_timeval = extern struct {
    tv_sec: time_t,
    tv_usec: suseconds_t,
}; // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/bits/alltypes.h:229:34: warning: struct demoted to opaque type - has bitfield
pub const struct_timespec = extern struct {
    tv_sec: time_t,
    tv_nsec: u64,
};
pub const struct___sigset_t = extern struct {
    __bits: [16]c_ulong,
};
pub const sigset_t = struct___sigset_t;
pub const fd_mask = c_ulong;
pub const fd_set = extern struct {
    fds_bits: [16]c_ulong,
};
pub extern fn select(c_int, noalias [*c]fd_set, noalias [*c]fd_set, noalias [*c]fd_set, noalias [*c]struct_timeval) c_int;
pub extern fn pselect(c_int, noalias [*c]fd_set, noalias [*c]fd_set, noalias [*c]fd_set, noalias ?*const struct_timespec, noalias [*c]const sigset_t) c_int; // /nix/store/jan1gkl34v83h1pwd43q716nsvf06miq-fuse-3.11.0/include/fuse3/fuse_common.h:54:15: warning: struct demoted to opaque type - has bitfield
pub const struct_fuse_file_info = opaque {};
pub const struct_fuse_loop_config = extern struct {
    clone_fd: c_int,
    max_idle_threads: c_uint,
};
pub const struct_fuse_conn_info = extern struct {
    proto_major: c_uint,
    proto_minor: c_uint,
    max_write: c_uint,
    max_read: c_uint,
    max_readahead: c_uint,
    capable: c_uint,
    want: c_uint,
    max_background: c_uint,
    congestion_threshold: c_uint,
    time_gran: c_uint,
    reserved: [22]c_uint,
};
pub const struct_fuse_session = opaque {};
pub const struct_fuse_pollhandle = opaque {};
pub const struct_fuse_conn_info_opts = opaque {};
pub extern fn fuse_parse_conn_info_opts(args: [*c]struct_fuse_args) ?*struct_fuse_conn_info_opts;
pub extern fn fuse_apply_conn_info_opts(opts: ?*struct_fuse_conn_info_opts, conn: [*c]struct_fuse_conn_info) void;
pub extern fn fuse_daemonize(foreground: c_int) c_int;
pub extern fn fuse_version() c_int;
pub extern fn fuse_pkgversion() [*c]const u8;
pub extern fn fuse_pollhandle_destroy(ph: ?*struct_fuse_pollhandle) void;
pub const FUSE_BUF_IS_FD: c_int = 2;
pub const FUSE_BUF_FD_SEEK: c_int = 4;
pub const FUSE_BUF_FD_RETRY: c_int = 8;
pub const enum_fuse_buf_flags = c_uint;
pub const FUSE_BUF_NO_SPLICE: c_int = 2;
pub const FUSE_BUF_FORCE_SPLICE: c_int = 4;
pub const FUSE_BUF_SPLICE_MOVE: c_int = 8;
pub const FUSE_BUF_SPLICE_NONBLOCK: c_int = 16;
pub const enum_fuse_buf_copy_flags = c_uint;
pub const struct_fuse_buf = extern struct {
    size: usize,
    flags: enum_fuse_buf_flags,
    mem: ?*anyopaque,
    fd: c_int,
    pos: off_t,
};
pub const struct_fuse_bufvec = extern struct {
    count: usize,
    idx: usize,
    off: usize,
    buf: [1]struct_fuse_buf,
};
pub extern fn fuse_buf_size(bufv: [*c]const struct_fuse_bufvec) usize;
pub extern fn fuse_buf_copy(dst: [*c]struct_fuse_bufvec, src: [*c]struct_fuse_bufvec, flags: enum_fuse_buf_copy_flags) isize;
pub extern fn fuse_set_signal_handlers(se: ?*struct_fuse_session) c_int;
pub extern fn fuse_remove_signal_handlers(se: ?*struct_fuse_session) void; // /nix/store/jan1gkl34v83h1pwd43q716nsvf06miq-fuse-3.11.0/include/fuse3/fuse_common.h:860:13: warning: struct demoted to opaque type - has bitfield
pub const struct__fuse_off_t_must_be_64bit_dummy_struct = opaque {};
pub const struct_flock = extern struct {
    l_type: c_short,
    l_whence: c_short,
    l_start: off_t,
    l_len: off_t,
    l_pid: pid_t,
};
pub extern fn creat([*c]const u8, mode_t) c_int;
pub extern fn fcntl(c_int, c_int, ...) c_int;
pub extern fn open([*c]const u8, c_int, ...) c_int;
pub extern fn openat(c_int, [*c]const u8, c_int, ...) c_int;
pub extern fn posix_fadvise(c_int, off_t, off_t, c_int) c_int;
pub extern fn posix_fallocate(c_int, off_t, off_t) c_int;
pub extern fn lockf(c_int, c_int, off_t) c_int;
pub const struct___locale_struct = opaque {};
pub const locale_t = ?*struct___locale_struct;
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: c_long,
    tm_zone: [*c]const u8,
};
pub extern fn clock() clock_t;
pub extern fn time([*c]time_t) time_t;
pub extern fn difftime(time_t, time_t) f64;
pub extern fn mktime([*c]struct_tm) time_t;
pub extern fn strftime(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm) usize;
pub extern fn gmtime([*c]const time_t) [*c]struct_tm;
pub extern fn localtime([*c]const time_t) [*c]struct_tm;
pub extern fn asctime([*c]const struct_tm) [*c]u8;
pub extern fn ctime([*c]const time_t) [*c]u8;
pub extern fn timespec_get(?*struct_timespec, c_int) c_int;
pub extern fn strftime_l(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm, locale_t) usize;
pub extern fn gmtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime_r(noalias [*c]const struct_tm, noalias [*c]u8) [*c]u8;
pub extern fn ctime_r([*c]const time_t, [*c]u8) [*c]u8;
pub extern fn tzset() void;
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec,
    it_value: struct_timespec,
};
pub extern fn nanosleep(?*const struct_timespec, ?*struct_timespec) c_int;
pub extern fn clock_getres(clockid_t, ?*struct_timespec) c_int;
pub extern fn clock_gettime(clockid_t, ?*struct_timespec) c_int;
pub extern fn clock_settime(clockid_t, ?*const struct_timespec) c_int;
pub extern fn clock_nanosleep(clockid_t, c_int, ?*const struct_timespec, ?*struct_timespec) c_int;
pub extern fn clock_getcpuclockid(pid_t, [*c]clockid_t) c_int;
pub const struct_sigevent = opaque {};
pub extern fn timer_create(clockid_t, noalias ?*struct_sigevent, noalias [*c]timer_t) c_int;
pub extern fn timer_delete(timer_t) c_int;
pub extern fn timer_settime(timer_t, c_int, noalias ?*const struct_itimerspec, noalias ?*struct_itimerspec) c_int;
pub extern fn timer_gettime(timer_t, ?*struct_itimerspec) c_int;
pub extern fn timer_getoverrun(timer_t) c_int;
pub extern var tzname: [2][*c]u8;
pub extern fn strptime(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]struct_tm) [*c]u8;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern var getdate_err: c_int;
pub extern fn getdate([*c]const u8) [*c]struct_tm;
pub extern fn stime([*c]const time_t) c_int;
pub extern fn timegm([*c]struct_tm) time_t;
pub const struct_stat = extern struct {
    st_dev: dev_t,
    st_ino: ino_t,
    st_nlink: nlink_t,
    st_mode: mode_t,
    st_uid: uid_t,
    st_gid: gid_t,
    __pad0: c_uint,
    st_rdev: dev_t,
    st_size: off_t,
    st_blksize: blksize_t,
    st_blocks: blkcnt_t,
    st_atim: struct_timespec,
    st_mtim: struct_timespec,
    st_ctim: struct_timespec,
    __unused: [3]c_long,
};
pub extern fn stat(noalias [*c]const u8, noalias ?*struct_stat) c_int;
pub extern fn fstat(c_int, ?*struct_stat) c_int;
pub extern fn lstat(noalias [*c]const u8, noalias ?*struct_stat) c_int;
pub extern fn fstatat(c_int, noalias [*c]const u8, noalias ?*struct_stat, c_int) c_int;
pub extern fn chmod([*c]const u8, mode_t) c_int;
pub extern fn fchmod(c_int, mode_t) c_int;
pub extern fn fchmodat(c_int, [*c]const u8, mode_t, c_int) c_int;
pub extern fn umask(mode_t) mode_t;
pub extern fn mkdir([*c]const u8, mode_t) c_int;
pub extern fn mkfifo([*c]const u8, mode_t) c_int;
pub extern fn mkdirat(c_int, [*c]const u8, mode_t) c_int;
pub extern fn mkfifoat(c_int, [*c]const u8, mode_t) c_int;
pub extern fn mknod([*c]const u8, mode_t, dev_t) c_int;
pub extern fn mknodat(c_int, [*c]const u8, mode_t, dev_t) c_int;
pub extern fn futimens(c_int, ?*const struct_timespec) c_int;
pub extern fn utimensat(c_int, [*c]const u8, ?*const struct_timespec, c_int) c_int;
pub extern fn lchmod([*c]const u8, mode_t) c_int; // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/sys/statvfs.h:20:2: warning: struct demoted to opaque type - has bitfield
pub const struct_statvfs = opaque {};
pub extern fn statvfs(noalias [*c]const u8, noalias ?*struct_statvfs) c_int;
pub extern fn fstatvfs(c_int, ?*struct_statvfs) c_int;
pub const struct_iovec = extern struct {
    iov_base: ?*anyopaque,
    iov_len: usize,
};
pub extern fn readv(c_int, [*c]const struct_iovec, c_int) isize;
pub extern fn writev(c_int, [*c]const struct_iovec, c_int) isize;
pub extern fn preadv(c_int, [*c]const struct_iovec, c_int, off_t) isize;
pub extern fn pwritev(c_int, [*c]const struct_iovec, c_int, off_t) isize;
pub const struct_fuse = opaque {};
pub const FUSE_READDIR_PLUS: c_int = 1;
pub const enum_fuse_readdir_flags = c_uint;
pub const FUSE_FILL_DIR_PLUS: c_int = 2;
pub const enum_fuse_fill_dir_flags = c_uint;
pub const fuse_fill_dir_t = ?*const fn (?*anyopaque, [*c]const u8, ?*const struct_stat, off_t, enum_fuse_fill_dir_flags) callconv(.C) c_int;
pub const struct_fuse_config = extern struct {
    set_gid: c_int,
    gid: c_uint,
    set_uid: c_int,
    uid: c_uint,
    set_mode: c_int,
    umask: c_uint,
    entry_timeout: f64,
    negative_timeout: f64,
    attr_timeout: f64,
    intr: c_int,
    intr_signal: c_int,
    remember: c_int,
    hard_remove: c_int,
    use_ino: c_int,
    readdir_ino: c_int,
    direct_io: c_int,
    kernel_cache: c_int,
    auto_cache: c_int,
    no_rofd_flush: c_int,
    ac_attr_timeout_set: c_int,
    ac_attr_timeout: f64,
    nullpath_ok: c_int,
    show_help: c_int,
    modules: [*c]u8,
    debug: c_int,
};
pub const struct_fuse_operations = extern struct {
    getattr: ?*const fn ([*c]const u8, ?*struct_stat, ?*struct_fuse_file_info) callconv(.C) c_int,
    readlink: ?*const fn ([*c]const u8, [*c]u8, usize) callconv(.C) c_int,
    mknod: ?*const fn ([*c]const u8, mode_t, dev_t) callconv(.C) c_int,
    mkdir: ?*const fn ([*c]const u8, mode_t) callconv(.C) c_int,
    unlink: ?*const fn ([*c]const u8) callconv(.C) c_int,
    rmdir: ?*const fn ([*c]const u8) callconv(.C) c_int,
    symlink: ?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int,
    rename: ?*const fn ([*c]const u8, [*c]const u8, c_uint) callconv(.C) c_int,
    link: ?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int,
    chmod: ?*const fn ([*c]const u8, mode_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    chown: ?*const fn ([*c]const u8, uid_t, gid_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    truncate: ?*const fn ([*c]const u8, off_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    open: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int,
    read: ?*const fn ([*c]const u8, [*c]u8, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    write: ?*const fn ([*c]const u8, [*c]const u8, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    statfs: ?*const fn ([*c]const u8, ?*struct_statvfs) callconv(.C) c_int,
    flush: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int,
    release: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int,
    fsync: ?*const fn ([*c]const u8, c_int, ?*struct_fuse_file_info) callconv(.C) c_int,
    setxattr: ?*const fn ([*c]const u8, [*c]const u8, [*c]const u8, usize, c_int) callconv(.C) c_int,
    getxattr: ?*const fn ([*c]const u8, [*c]const u8, [*c]u8, usize) callconv(.C) c_int,
    listxattr: ?*const fn ([*c]const u8, [*c]u8, usize) callconv(.C) c_int,
    removexattr: ?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int,
    opendir: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int,
    readdir: ?*const fn ([*c]const u8, ?*anyopaque, fuse_fill_dir_t, off_t, ?*struct_fuse_file_info, enum_fuse_readdir_flags) callconv(.C) c_int,
    releasedir: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int,
    fsyncdir: ?*const fn ([*c]const u8, c_int, ?*struct_fuse_file_info) callconv(.C) c_int,
    init: ?*const fn ([*c]struct_fuse_conn_info, [*c]struct_fuse_config) callconv(.C) ?*anyopaque,
    destroy: ?*const fn (?*anyopaque) callconv(.C) void,
    access: ?*const fn ([*c]const u8, c_int) callconv(.C) c_int,
    create: ?*const fn ([*c]const u8, mode_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    lock: ?*const fn ([*c]const u8, ?*struct_fuse_file_info, c_int, [*c]struct_flock) callconv(.C) c_int,
    utimens: ?*const fn ([*c]const u8, ?*const struct_timespec, ?*struct_fuse_file_info) callconv(.C) c_int,
    bmap: ?*const fn ([*c]const u8, usize, [*c]u64) callconv(.C) c_int,
    ioctl: ?*const fn ([*c]const u8, c_int, ?*anyopaque, ?*struct_fuse_file_info, c_uint, ?*anyopaque) callconv(.C) c_int,
    poll: ?*const fn ([*c]const u8, ?*struct_fuse_file_info, ?*struct_fuse_pollhandle, [*c]c_uint) callconv(.C) c_int,
    write_buf: ?*const fn ([*c]const u8, [*c]struct_fuse_bufvec, off_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    read_buf: ?*const fn ([*c]const u8, [*c][*c]struct_fuse_bufvec, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    flock: ?*const fn ([*c]const u8, ?*struct_fuse_file_info, c_int) callconv(.C) c_int,
    fallocate: ?*const fn ([*c]const u8, c_int, off_t, off_t, ?*struct_fuse_file_info) callconv(.C) c_int,
    copy_file_range: ?*const fn ([*c]const u8, ?*struct_fuse_file_info, off_t, [*c]const u8, ?*struct_fuse_file_info, off_t, usize, c_int) callconv(.C) isize,
    lseek: ?*const fn ([*c]const u8, off_t, c_int, ?*struct_fuse_file_info) callconv(.C) off_t,
};
pub const struct_fuse_context = extern struct {
    fuse: ?*struct_fuse,
    uid: uid_t,
    gid: gid_t,
    pid: pid_t,
    private_data: ?*anyopaque,
    umask: mode_t,
};
pub extern fn fuse_lib_help(args: [*c]struct_fuse_args) void;
pub extern fn fuse_new(args: [*c]struct_fuse_args, op: [*c]const struct_fuse_operations, op_size: usize, private_data: ?*anyopaque) ?*struct_fuse;
pub extern fn fuse_mount(f: ?*struct_fuse, mountpoint: [*c]const u8) c_int;
pub extern fn fuse_unmount(f: ?*struct_fuse) void;
pub extern fn fuse_destroy(f: ?*struct_fuse) void;
pub extern fn fuse_loop(f: ?*struct_fuse) c_int;
pub extern fn fuse_exit(f: ?*struct_fuse) void;
pub extern fn fuse_loop_mt_31(f: ?*struct_fuse, clone_fd: c_int) c_int;
pub extern fn fuse_get_context() [*c]struct_fuse_context;
pub extern fn fuse_getgroups(size: c_int, list: [*c]gid_t) c_int;
pub extern fn fuse_interrupted() c_int;
pub extern fn fuse_invalidate_path(f: ?*struct_fuse, path: [*c]const u8) c_int;
pub extern fn fuse_main_real(argc: c_int, argv: [*c][*c]u8, op: [*c]const struct_fuse_operations, op_size: usize, private_data: ?*anyopaque) c_int;
pub extern fn fuse_start_cleanup_thread(fuse: ?*struct_fuse) c_int;
pub extern fn fuse_stop_cleanup_thread(fuse: ?*struct_fuse) void;
pub extern fn fuse_clean_cache(fuse: ?*struct_fuse) c_int;
pub const struct_fuse_fs = opaque {};
pub extern fn fuse_fs_getattr(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: ?*struct_stat, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_rename(fs: ?*struct_fuse_fs, oldpath: [*c]const u8, newpath: [*c]const u8, flags: c_uint) c_int;
pub extern fn fuse_fs_unlink(fs: ?*struct_fuse_fs, path: [*c]const u8) c_int;
pub extern fn fuse_fs_rmdir(fs: ?*struct_fuse_fs, path: [*c]const u8) c_int;
pub extern fn fuse_fs_symlink(fs: ?*struct_fuse_fs, linkname: [*c]const u8, path: [*c]const u8) c_int;
pub extern fn fuse_fs_link(fs: ?*struct_fuse_fs, oldpath: [*c]const u8, newpath: [*c]const u8) c_int;
pub extern fn fuse_fs_release(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_open(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_read(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]u8, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_read_buf(fs: ?*struct_fuse_fs, path: [*c]const u8, bufp: [*c][*c]struct_fuse_bufvec, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_write(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]const u8, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_write_buf(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_fuse_bufvec, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_fsync(fs: ?*struct_fuse_fs, path: [*c]const u8, datasync: c_int, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_flush(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_statfs(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: ?*struct_statvfs) c_int;
pub extern fn fuse_fs_opendir(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_readdir(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: ?*anyopaque, filler: fuse_fill_dir_t, off: off_t, fi: ?*struct_fuse_file_info, flags: enum_fuse_readdir_flags) c_int;
pub extern fn fuse_fs_fsyncdir(fs: ?*struct_fuse_fs, path: [*c]const u8, datasync: c_int, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_releasedir(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_create(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_lock(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, cmd: c_int, lock: [*c]struct_flock) c_int;
pub extern fn fuse_fs_flock(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, op: c_int) c_int;
pub extern fn fuse_fs_chmod(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_chown(fs: ?*struct_fuse_fs, path: [*c]const u8, uid: uid_t, gid: gid_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_truncate(fs: ?*struct_fuse_fs, path: [*c]const u8, size: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_utimens(fs: ?*struct_fuse_fs, path: [*c]const u8, tv: ?*const struct_timespec, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_access(fs: ?*struct_fuse_fs, path: [*c]const u8, mask: c_int) c_int;
pub extern fn fuse_fs_readlink(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]u8, len: usize) c_int;
pub extern fn fuse_fs_mknod(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t, rdev: dev_t) c_int;
pub extern fn fuse_fs_mkdir(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t) c_int;
pub extern fn fuse_fs_setxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8, value: [*c]const u8, size: usize, flags: c_int) c_int;
pub extern fn fuse_fs_getxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8, value: [*c]u8, size: usize) c_int;
pub extern fn fuse_fs_listxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, list: [*c]u8, size: usize) c_int;
pub extern fn fuse_fs_removexattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8) c_int;
pub extern fn fuse_fs_bmap(fs: ?*struct_fuse_fs, path: [*c]const u8, blocksize: usize, idx: [*c]u64) c_int;
pub extern fn fuse_fs_ioctl(fs: ?*struct_fuse_fs, path: [*c]const u8, cmd: c_int, arg: ?*anyopaque, fi: ?*struct_fuse_file_info, flags: c_uint, data: ?*anyopaque) c_int;
pub extern fn fuse_fs_poll(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, ph: ?*struct_fuse_pollhandle, reventsp: [*c]c_uint) c_int;
pub extern fn fuse_fs_fallocate(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: c_int, offset: off_t, length: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_copy_file_range(fs: ?*struct_fuse_fs, path_in: [*c]const u8, fi_in: ?*struct_fuse_file_info, off_in: off_t, path_out: [*c]const u8, fi_out: ?*struct_fuse_file_info, off_out: off_t, len: usize, flags: c_int) isize;
pub extern fn fuse_fs_lseek(fs: ?*struct_fuse_fs, path: [*c]const u8, off: off_t, whence: c_int, fi: ?*struct_fuse_file_info) off_t;
pub extern fn fuse_fs_init(fs: ?*struct_fuse_fs, conn: [*c]struct_fuse_conn_info, cfg: [*c]struct_fuse_config) void;
pub extern fn fuse_fs_destroy(fs: ?*struct_fuse_fs) void;
pub extern fn fuse_notify_poll(ph: ?*struct_fuse_pollhandle) c_int;
pub extern fn fuse_fs_new(op: [*c]const struct_fuse_operations, op_size: usize, private_data: ?*anyopaque) ?*struct_fuse_fs;
pub const fuse_module_factory_t = ?*const fn ([*c]struct_fuse_args, [*c]?*struct_fuse_fs) callconv(.C) ?*struct_fuse_fs;
pub extern fn fuse_get_session(f: ?*struct_fuse) ?*struct_fuse_session;
pub extern fn fuse_open_channel(mountpoint: [*c]const u8, options: [*c]const u8) c_int;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):80:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):86:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):109:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):113:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):119:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):122:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):183:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):205:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):213:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):343:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):344:9
pub const FUSE_OPT_KEY = @compileError("unable to translate C expr: unexpected token '{'"); // /nix/store/jan1gkl34v83h1pwd43q716nsvf06miq-fuse-3.11.0/include/fuse3/fuse_opt.h:98:9
pub const FUSE_OPT_END = @compileError("unable to translate C expr: unexpected token '{'"); // /nix/store/jan1gkl34v83h1pwd43q716nsvf06miq-fuse-3.11.0/include/fuse3/fuse_opt.h:104:9
pub const FUSE_ARGS_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /nix/store/jan1gkl34v83h1pwd43q716nsvf06miq-fuse-3.11.0/include/fuse3/fuse_opt.h:123:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /nix/store/s6lfspyrdpzm46q38l7kfkqm52gfhanv-zig-0.11.0-dev.4009+11695745e/lib/include/stdarg.h:33:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /nix/store/s6lfspyrdpzm46q38l7kfkqm52gfhanv-zig-0.11.0-dev.4009+11695745e/lib/include/stdarg.h:35:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /nix/store/s6lfspyrdpzm46q38l7kfkqm52gfhanv-zig-0.11.0-dev.4009+11695745e/lib/include/stdarg.h:36:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /nix/store/s6lfspyrdpzm46q38l7kfkqm52gfhanv-zig-0.11.0-dev.4009+11695745e/lib/include/stdarg.h:41:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /nix/store/s6lfspyrdpzm46q38l7kfkqm52gfhanv-zig-0.11.0-dev.4009+11695745e/lib/include/stdarg.h:46:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/features.h:20:9
pub const __inline = @compileError("unable to translate C expr: unexpected token 'inline'"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/features.h:26:9
pub const __REDIR = @compileError("unable to translate macro: undefined identifier `__typeof__`"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/features.h:38:9
pub const FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/sys/select.h:26:9
pub const FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/sys/select.h:27:9
pub const FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/sys/select.h:28:9
pub const FUSE_BUFVEC_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /nix/store/jan1gkl34v83h1pwd43q716nsvf06miq-fuse-3.11.0/include/fuse3/fuse_common.h:770:9
pub const __tm_gmtoff = @compileError("unable to translate macro: undefined identifier `tm_gmtoff`"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/time.h:36:9
pub const __tm_zone = @compileError("unable to translate macro: undefined identifier `tm_zone`"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/time.h:37:9
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atim`"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/sys/stat.h:25:9
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtim`"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/sys/stat.h:26:9
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctim`"); // /nix/store/kd1z202w3l3njfn7n6dkyridwvnm3yg2-musl-1.2.3-dev/include/sys/stat.h:27:9
pub const fuse_main = @compileError("unable to translate C expr: unexpected token '*'"); // /nix/store/jan1gkl34v83h1pwd43q716nsvf06miq-fuse-3.11.0/include/fuse3/fuse.h:899:9
pub const FUSE_REGISTER_MODULE = @compileError("unable to translate macro: undefined identifier `fuse_module_`"); // /nix/store/jan1gkl34v83h1pwd43q716nsvf06miq-fuse-3.11.0/include/fuse3/fuse.h:1291:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 16);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "16.0.1 (https://github.com/ziglang/zig-bootstrap bf1b2cdb83141ad9336eec42160c9fe87f90198d)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 16.0.1 (https://github.com/ziglang/zig-bootstrap bf1b2cdb83141ad9336eec42160c9fe87f90198d)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __PIE__ = @as(c_int, 2);
pub const __pie__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver3 = @as(c_int, 1);
pub const __znver3__ = @as(c_int, 1);
pub const __tune_znver3__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __WBNOINVD__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __RDPRU__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const FUSE_USE_VERSION = @as(c_int, 31);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const FUSE_H_ = "";
pub const FUSE_COMMON_H_ = "";
pub const FUSE_OPT_H_ = "";
pub const FUSE_OPT_KEY_OPT = -@as(c_int, 1);
pub const FUSE_OPT_KEY_NONOPT = -@as(c_int, 2);
pub const FUSE_OPT_KEY_KEEP = -@as(c_int, 3);
pub const FUSE_OPT_KEY_DISCARD = -@as(c_int, 4);
pub const FUSE_LOG_H_ = "";
pub const __GNUC_VA_LIST = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = "";
pub const __NEED_int8_t = "";
pub const __NEED_int16_t = "";
pub const __NEED_int32_t = "";
pub const __NEED_int64_t = "";
pub const __NEED_uint8_t = "";
pub const __NEED_uint16_t = "";
pub const __NEED_uint32_t = "";
pub const __NEED_uint64_t = "";
pub const __NEED_intptr_t = "";
pub const __NEED_uintptr_t = "";
pub const __NEED_intmax_t = "";
pub const __NEED_uintmax_t = "";
pub const _Addr = c_long;
pub const _Int64 = c_long;
pub const _Reg = c_long;
pub const __BYTE_ORDER = @as(c_int, 1234);
pub const __LONG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 0x7fffffffffffffff, .hexadecimal);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __DEFINED_uintptr_t = "";
pub const __DEFINED_intptr_t = "";
pub const __DEFINED_int8_t = "";
pub const __DEFINED_int16_t = "";
pub const __DEFINED_int32_t = "";
pub const __DEFINED_int64_t = "";
pub const __DEFINED_intmax_t = "";
pub const __DEFINED_uint8_t = "";
pub const __DEFINED_uint16_t = "";
pub const __DEFINED_uint32_t = "";
pub const __DEFINED_uint64_t = "";
pub const __DEFINED_uintmax_t = "";
pub const INT8_MIN = -@as(c_int, 1) - @as(c_int, 0x7f);
pub const INT16_MIN = -@as(c_int, 1) - @as(c_int, 0x7fff);
pub const INT32_MIN = -@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const INT64_MIN = -@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffffffffffff, .hexadecimal);
pub const INT8_MAX = @as(c_int, 0x7f);
pub const INT16_MAX = @as(c_int, 0x7fff);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const INT64_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffffffffffff, .hexadecimal);
pub const UINT8_MAX = @as(c_int, 0xff);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);
pub const UINT64_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffffffffffff, .hexadecimal);
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = UINT32_MAX;
pub const WCHAR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal) + '\x00';
pub const WCHAR_MIN = (-@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal)) + '\x00';
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const INT_FAST16_MIN = INT32_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST16_MAX = INT32_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const UINT_FAST16_MAX = UINT32_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const _SYS_TYPES_H = "";
pub const _FEATURES_H = "";
pub const _BSD_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const __NEED_ino_t = "";
pub const __NEED_dev_t = "";
pub const __NEED_uid_t = "";
pub const __NEED_gid_t = "";
pub const __NEED_mode_t = "";
pub const __NEED_nlink_t = "";
pub const __NEED_off_t = "";
pub const __NEED_pid_t = "";
pub const __NEED_size_t = "";
pub const __NEED_ssize_t = "";
pub const __NEED_time_t = "";
pub const __NEED_timer_t = "";
pub const __NEED_clockid_t = "";
pub const __NEED_blkcnt_t = "";
pub const __NEED_fsblkcnt_t = "";
pub const __NEED_fsfilcnt_t = "";
pub const __NEED_id_t = "";
pub const __NEED_key_t = "";
pub const __NEED_clock_t = "";
pub const __NEED_suseconds_t = "";
pub const __NEED_blksize_t = "";
pub const __NEED_pthread_t = "";
pub const __NEED_pthread_attr_t = "";
pub const __NEED_pthread_mutexattr_t = "";
pub const __NEED_pthread_condattr_t = "";
pub const __NEED_pthread_rwlockattr_t = "";
pub const __NEED_pthread_barrierattr_t = "";
pub const __NEED_pthread_mutex_t = "";
pub const __NEED_pthread_cond_t = "";
pub const __NEED_pthread_rwlock_t = "";
pub const __NEED_pthread_barrier_t = "";
pub const __NEED_pthread_spinlock_t = "";
pub const __NEED_pthread_key_t = "";
pub const __NEED_pthread_once_t = "";
pub const __NEED_useconds_t = "";
pub const __NEED_u_int64_t = "";
pub const __NEED_register_t = "";
pub const __DEFINED_size_t = "";
pub const __DEFINED_ssize_t = "";
pub const __DEFINED_register_t = "";
pub const __DEFINED_time_t = "";
pub const __DEFINED_suseconds_t = "";
pub const __DEFINED_u_int64_t = "";
pub const __DEFINED_mode_t = "";
pub const __DEFINED_nlink_t = "";
pub const __DEFINED_off_t = "";
pub const __DEFINED_ino_t = "";
pub const __DEFINED_dev_t = "";
pub const __DEFINED_blksize_t = "";
pub const __DEFINED_blkcnt_t = "";
pub const __DEFINED_fsblkcnt_t = "";
pub const __DEFINED_fsfilcnt_t = "";
pub const __DEFINED_timer_t = "";
pub const __DEFINED_clockid_t = "";
pub const __DEFINED_clock_t = "";
pub const __DEFINED_pid_t = "";
pub const __DEFINED_id_t = "";
pub const __DEFINED_uid_t = "";
pub const __DEFINED_gid_t = "";
pub const __DEFINED_key_t = "";
pub const __DEFINED_useconds_t = "";
pub const __DEFINED_pthread_t = "";
pub const __DEFINED_pthread_once_t = "";
pub const __DEFINED_pthread_key_t = "";
pub const __DEFINED_pthread_spinlock_t = "";
pub const __DEFINED_pthread_mutexattr_t = "";
pub const __DEFINED_pthread_condattr_t = "";
pub const __DEFINED_pthread_barrierattr_t = "";
pub const __DEFINED_pthread_rwlockattr_t = "";
pub const __DEFINED_pthread_attr_t = "";
pub const __DEFINED_pthread_mutex_t = "";
pub const __DEFINED_pthread_cond_t = "";
pub const __DEFINED_pthread_rwlock_t = "";
pub const __DEFINED_pthread_barrier_t = "";
pub const _ENDIAN_H = "";
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub inline fn htobe16(x: anytype) @TypeOf(__bswap16(x)) {
    return __bswap16(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap16(x)) {
    return __bswap16(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap32(x)) {
    return __bswap32(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap32(x)) {
    return __bswap32(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap64(x)) {
    return __bswap64(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap64(x)) {
    return __bswap64(x);
}
pub inline fn htole16(x: anytype) u16 {
    return @import("std").zig.c_translation.cast(u16, x);
}
pub inline fn le16toh(x: anytype) u16 {
    return @import("std").zig.c_translation.cast(u16, x);
}
pub inline fn htole32(x: anytype) u32 {
    return @import("std").zig.c_translation.cast(u32, x);
}
pub inline fn le32toh(x: anytype) u32 {
    return @import("std").zig.c_translation.cast(u32, x);
}
pub inline fn htole64(x: anytype) u64 {
    return @import("std").zig.c_translation.cast(u64, x);
}
pub inline fn le64toh(x: anytype) u64 {
    return @import("std").zig.c_translation.cast(u64, x);
}
pub inline fn betoh16(x: anytype) @TypeOf(__bswap16(x)) {
    return __bswap16(x);
}
pub inline fn betoh32(x: anytype) @TypeOf(__bswap32(x)) {
    return __bswap32(x);
}
pub inline fn betoh64(x: anytype) @TypeOf(__bswap64(x)) {
    return __bswap64(x);
}
pub inline fn letoh16(x: anytype) u16 {
    return @import("std").zig.c_translation.cast(u16, x);
}
pub inline fn letoh32(x: anytype) u32 {
    return @import("std").zig.c_translation.cast(u32, x);
}
pub inline fn letoh64(x: anytype) u64 {
    return @import("std").zig.c_translation.cast(u64, x);
}
pub const _SYS_SELECT_H = "";
pub const __NEED_struct_timeval = "";
pub const __NEED_struct_timespec = "";
pub const __NEED_sigset_t = "";
pub const __DEFINED_struct_timeval = "";
pub const __DEFINED_struct_timespec = "";
pub const __DEFINED_sigset_t = "";
pub const FD_SETSIZE = @as(c_int, 1024);
pub inline fn FD_ISSET(d: anytype, s: anytype) @TypeOf(!!((s.*.fds_bits[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(d, @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_long))))] & (@as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_long)))) != 0)) {
    return !!((s.*.fds_bits[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(d, @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_long))))] & (@as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_long)))) != 0);
}
pub const NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(c_long));
pub const FUSE_MAJOR_VERSION = @as(c_int, 3);
pub const FUSE_MINOR_VERSION = @as(c_int, 11);
pub inline fn FUSE_MAKE_VERSION(maj: anytype, min: anytype) @TypeOf((maj * @as(c_int, 100)) + min) {
    return (maj * @as(c_int, 100)) + min;
}
pub const FUSE_VERSION = FUSE_MAKE_VERSION(FUSE_MAJOR_VERSION, FUSE_MINOR_VERSION);
pub const FUSE_CAP_ASYNC_READ = @as(c_int, 1) << @as(c_int, 0);
pub const FUSE_CAP_POSIX_LOCKS = @as(c_int, 1) << @as(c_int, 1);
pub const FUSE_CAP_ATOMIC_O_TRUNC = @as(c_int, 1) << @as(c_int, 3);
pub const FUSE_CAP_EXPORT_SUPPORT = @as(c_int, 1) << @as(c_int, 4);
pub const FUSE_CAP_DONT_MASK = @as(c_int, 1) << @as(c_int, 6);
pub const FUSE_CAP_SPLICE_WRITE = @as(c_int, 1) << @as(c_int, 7);
pub const FUSE_CAP_SPLICE_MOVE = @as(c_int, 1) << @as(c_int, 8);
pub const FUSE_CAP_SPLICE_READ = @as(c_int, 1) << @as(c_int, 9);
pub const FUSE_CAP_FLOCK_LOCKS = @as(c_int, 1) << @as(c_int, 10);
pub const FUSE_CAP_IOCTL_DIR = @as(c_int, 1) << @as(c_int, 11);
pub const FUSE_CAP_AUTO_INVAL_DATA = @as(c_int, 1) << @as(c_int, 12);
pub const FUSE_CAP_READDIRPLUS = @as(c_int, 1) << @as(c_int, 13);
pub const FUSE_CAP_READDIRPLUS_AUTO = @as(c_int, 1) << @as(c_int, 14);
pub const FUSE_CAP_ASYNC_DIO = @as(c_int, 1) << @as(c_int, 15);
pub const FUSE_CAP_WRITEBACK_CACHE = @as(c_int, 1) << @as(c_int, 16);
pub const FUSE_CAP_NO_OPEN_SUPPORT = @as(c_int, 1) << @as(c_int, 17);
pub const FUSE_CAP_PARALLEL_DIROPS = @as(c_int, 1) << @as(c_int, 18);
pub const FUSE_CAP_POSIX_ACL = @as(c_int, 1) << @as(c_int, 19);
pub const FUSE_CAP_HANDLE_KILLPRIV = @as(c_int, 1) << @as(c_int, 20);
pub const FUSE_CAP_CACHE_SYMLINKS = @as(c_int, 1) << @as(c_int, 23);
pub const FUSE_CAP_NO_OPENDIR_SUPPORT = @as(c_int, 1) << @as(c_int, 24);
pub const FUSE_CAP_EXPLICIT_INVAL_DATA = @as(c_int, 1) << @as(c_int, 25);
pub const FUSE_IOCTL_COMPAT = @as(c_int, 1) << @as(c_int, 0);
pub const FUSE_IOCTL_UNRESTRICTED = @as(c_int, 1) << @as(c_int, 1);
pub const FUSE_IOCTL_RETRY = @as(c_int, 1) << @as(c_int, 2);
pub const FUSE_IOCTL_DIR = @as(c_int, 1) << @as(c_int, 4);
pub const FUSE_IOCTL_MAX_IOV = @as(c_int, 256);
pub const _FCNTL_H = "";
pub const O_CREAT = @as(c_int, 0o100);
pub const O_EXCL = @as(c_int, 0o200);
pub const O_NOCTTY = @as(c_int, 0o400);
pub const O_TRUNC = @as(c_int, 0o1000);
pub const O_APPEND = @as(c_int, 0o2000);
pub const O_NONBLOCK = @as(c_int, 0o4000);
pub const O_DSYNC = @as(c_int, 0o10000);
pub const O_SYNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o4010000, .octal);
pub const O_RSYNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o4010000, .octal);
pub const O_DIRECTORY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o200000, .octal);
pub const O_NOFOLLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o400000, .octal);
pub const O_CLOEXEC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o2000000, .octal);
pub const O_ASYNC = @as(c_int, 0o20000);
pub const O_DIRECT = @as(c_int, 0o40000);
pub const O_LARGEFILE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const O_NOATIME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o1000000, .octal);
pub const O_PATH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o10000000, .octal);
pub const O_TMPFILE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o20200000, .octal);
pub const O_NDELAY = O_NONBLOCK;
pub const F_DUPFD = @as(c_int, 0);
pub const F_GETFD = @as(c_int, 1);
pub const F_SETFD = @as(c_int, 2);
pub const F_GETFL = @as(c_int, 3);
pub const F_SETFL = @as(c_int, 4);
pub const F_SETOWN = @as(c_int, 8);
pub const F_GETOWN = @as(c_int, 9);
pub const F_SETSIG = @as(c_int, 10);
pub const F_GETSIG = @as(c_int, 11);
pub const F_GETLK = @as(c_int, 5);
pub const F_SETLK = @as(c_int, 6);
pub const F_SETLKW = @as(c_int, 7);
pub const F_SETOWN_EX = @as(c_int, 15);
pub const F_GETOWN_EX = @as(c_int, 16);
pub const F_GETOWNER_UIDS = @as(c_int, 17);
pub const O_SEARCH = O_PATH;
pub const O_EXEC = O_PATH;
pub const O_TTY_INIT = @as(c_int, 0);
pub const O_ACCMODE = @as(c_int, 0o3) | O_SEARCH;
pub const O_RDONLY = @as(c_int, 0o0);
pub const O_WRONLY = @as(c_int, 0o1);
pub const O_RDWR = @as(c_int, 0o2);
pub const F_OFD_GETLK = @as(c_int, 36);
pub const F_OFD_SETLK = @as(c_int, 37);
pub const F_OFD_SETLKW = @as(c_int, 38);
pub const F_DUPFD_CLOEXEC = @as(c_int, 1030);
pub const F_RDLCK = @as(c_int, 0);
pub const F_WRLCK = @as(c_int, 1);
pub const F_UNLCK = @as(c_int, 2);
pub const FD_CLOEXEC = @as(c_int, 1);
pub const AT_FDCWD = -@as(c_int, 100);
pub const AT_SYMLINK_NOFOLLOW = @as(c_int, 0x100);
pub const AT_REMOVEDIR = @as(c_int, 0x200);
pub const AT_SYMLINK_FOLLOW = @as(c_int, 0x400);
pub const AT_EACCESS = @as(c_int, 0x200);
pub const POSIX_FADV_NORMAL = @as(c_int, 0);
pub const POSIX_FADV_RANDOM = @as(c_int, 1);
pub const POSIX_FADV_SEQUENTIAL = @as(c_int, 2);
pub const POSIX_FADV_WILLNEED = @as(c_int, 3);
pub const POSIX_FADV_DONTNEED = @as(c_int, 4);
pub const POSIX_FADV_NOREUSE = @as(c_int, 5);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const S_ISUID = @as(c_int, 0o4000);
pub const S_ISGID = @as(c_int, 0o2000);
pub const S_ISVTX = @as(c_int, 0o1000);
pub const S_IRUSR = @as(c_int, 0o400);
pub const S_IWUSR = @as(c_int, 0o200);
pub const S_IXUSR = @as(c_int, 0o100);
pub const S_IRWXU = @as(c_int, 0o700);
pub const S_IRGRP = @as(c_int, 0o040);
pub const S_IWGRP = @as(c_int, 0o020);
pub const S_IXGRP = @as(c_int, 0o010);
pub const S_IRWXG = @as(c_int, 0o070);
pub const S_IROTH = @as(c_int, 0o004);
pub const S_IWOTH = @as(c_int, 0o002);
pub const S_IXOTH = @as(c_int, 0o001);
pub const S_IRWXO = @as(c_int, 0o007);
pub const AT_NO_AUTOMOUNT = @as(c_int, 0x800);
pub const AT_EMPTY_PATH = @as(c_int, 0x1000);
pub const AT_STATX_SYNC_TYPE = @as(c_int, 0x6000);
pub const AT_STATX_SYNC_AS_STAT = @as(c_int, 0x0000);
pub const AT_STATX_FORCE_SYNC = @as(c_int, 0x2000);
pub const AT_STATX_DONT_SYNC = @as(c_int, 0x4000);
pub const AT_RECURSIVE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const FAPPEND = O_APPEND;
pub const FFSYNC = O_SYNC;
pub const FASYNC = O_ASYNC;
pub const FNONBLOCK = O_NONBLOCK;
pub const FNDELAY = O_NDELAY;
pub const F_OK = @as(c_int, 0);
pub const R_OK = @as(c_int, 4);
pub const W_OK = @as(c_int, 2);
pub const X_OK = @as(c_int, 1);
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const F_SETLEASE = @as(c_int, 1024);
pub const F_GETLEASE = @as(c_int, 1025);
pub const F_NOTIFY = @as(c_int, 1026);
pub const F_CANCELLK = @as(c_int, 1029);
pub const F_SETPIPE_SZ = @as(c_int, 1031);
pub const F_GETPIPE_SZ = @as(c_int, 1032);
pub const F_ADD_SEALS = @as(c_int, 1033);
pub const F_GET_SEALS = @as(c_int, 1034);
pub const F_SEAL_SEAL = @as(c_int, 0x0001);
pub const F_SEAL_SHRINK = @as(c_int, 0x0002);
pub const F_SEAL_GROW = @as(c_int, 0x0004);
pub const F_SEAL_WRITE = @as(c_int, 0x0008);
pub const F_SEAL_FUTURE_WRITE = @as(c_int, 0x0010);
pub const F_GET_RW_HINT = @as(c_int, 1035);
pub const F_SET_RW_HINT = @as(c_int, 1036);
pub const F_GET_FILE_RW_HINT = @as(c_int, 1037);
pub const F_SET_FILE_RW_HINT = @as(c_int, 1038);
pub const RWF_WRITE_LIFE_NOT_SET = @as(c_int, 0);
pub const RWH_WRITE_LIFE_NONE = @as(c_int, 1);
pub const RWH_WRITE_LIFE_SHORT = @as(c_int, 2);
pub const RWH_WRITE_LIFE_MEDIUM = @as(c_int, 3);
pub const RWH_WRITE_LIFE_LONG = @as(c_int, 4);
pub const RWH_WRITE_LIFE_EXTREME = @as(c_int, 5);
pub const DN_ACCESS = @as(c_int, 0x00000001);
pub const DN_MODIFY = @as(c_int, 0x00000002);
pub const DN_CREATE = @as(c_int, 0x00000004);
pub const DN_DELETE = @as(c_int, 0x00000008);
pub const DN_RENAME = @as(c_int, 0x00000010);
pub const DN_ATTRIB = @as(c_int, 0x00000020);
pub const DN_MULTISHOT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub const _TIME_H = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __NEED_locale_t = "";
pub const __DEFINED_locale_t = "";
pub const CLOCKS_PER_SEC = @as(c_long, 1000000);
pub const TIME_UTC = @as(c_int, 1);
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_SGI_CYCLE = @as(c_int, 10);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const _SYS_STAT_H = "";
pub const S_IFMT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal);
pub const S_IFDIR = @as(c_int, 0o040000);
pub const S_IFCHR = @as(c_int, 0o020000);
pub const S_IFBLK = @as(c_int, 0o060000);
pub const S_IFREG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const S_IFIFO = @as(c_int, 0o010000);
pub const S_IFLNK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o120000, .octal);
pub const S_IFSOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o140000, .octal);
pub inline fn S_TYPEISMQ(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = @TypeOf(buf);
    return @as(c_int, 0);
}
pub inline fn S_TYPEISSEM(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = @TypeOf(buf);
    return @as(c_int, 0);
}
pub inline fn S_TYPEISSHM(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = @TypeOf(buf);
    return @as(c_int, 0);
}
pub inline fn S_TYPEISTMO(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = @TypeOf(buf);
    return @as(c_int, 0);
}
pub inline fn S_ISDIR(mode: anytype) @TypeOf((mode & S_IFMT) == S_IFDIR) {
    return (mode & S_IFMT) == S_IFDIR;
}
pub inline fn S_ISCHR(mode: anytype) @TypeOf((mode & S_IFMT) == S_IFCHR) {
    return (mode & S_IFMT) == S_IFCHR;
}
pub inline fn S_ISBLK(mode: anytype) @TypeOf((mode & S_IFMT) == S_IFBLK) {
    return (mode & S_IFMT) == S_IFBLK;
}
pub inline fn S_ISREG(mode: anytype) @TypeOf((mode & S_IFMT) == S_IFREG) {
    return (mode & S_IFMT) == S_IFREG;
}
pub inline fn S_ISFIFO(mode: anytype) @TypeOf((mode & S_IFMT) == S_IFIFO) {
    return (mode & S_IFMT) == S_IFIFO;
}
pub inline fn S_ISLNK(mode: anytype) @TypeOf((mode & S_IFMT) == S_IFLNK) {
    return (mode & S_IFMT) == S_IFLNK;
}
pub inline fn S_ISSOCK(mode: anytype) @TypeOf((mode & S_IFMT) == S_IFSOCK) {
    return (mode & S_IFMT) == S_IFSOCK;
}
pub const UTIME_NOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x3fffffff, .hexadecimal);
pub const UTIME_OMIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x3ffffffe, .hexadecimal);
pub const S_IREAD = S_IRUSR;
pub const S_IWRITE = S_IWUSR;
pub const S_IEXEC = S_IXUSR;
pub const _SYS_STATVFS_H = "";
pub const ST_RDONLY = @as(c_int, 1);
pub const ST_NOSUID = @as(c_int, 2);
pub const ST_NODEV = @as(c_int, 4);
pub const ST_NOEXEC = @as(c_int, 8);
pub const ST_SYNCHRONOUS = @as(c_int, 16);
pub const ST_MANDLOCK = @as(c_int, 64);
pub const ST_WRITE = @as(c_int, 128);
pub const ST_APPEND = @as(c_int, 256);
pub const ST_IMMUTABLE = @as(c_int, 512);
pub const ST_NOATIME = @as(c_int, 1024);
pub const ST_NODIRATIME = @as(c_int, 2048);
pub const ST_RELATIME = @as(c_int, 4096);
pub const _SYS_UIO_H = "";
pub const __NEED_struct_iovec = "";
pub const __DEFINED_struct_iovec = "";
pub const UIO_MAXIOV = @as(c_int, 1024);
pub inline fn fuse_loop_mt(f: anytype, clone_fd: anytype) @TypeOf(fuse_loop_mt_31(f, clone_fd)) {
    return fuse_loop_mt_31(f, clone_fd);
}
pub const fuse_opt = struct_fuse_opt;
pub const fuse_args = struct_fuse_args;
pub const __va_list_tag = struct___va_list_tag;
pub const fuse_log_level = enum_fuse_log_level;
pub const __pthread = struct___pthread;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __sigset_t = struct___sigset_t;
pub const fuse_file_info = struct_fuse_file_info;
pub const fuse_loop_config = struct_fuse_loop_config;
pub const fuse_conn_info = struct_fuse_conn_info;
pub const fuse_session = struct_fuse_session;
pub const fuse_pollhandle = struct_fuse_pollhandle;
pub const fuse_conn_info_opts = struct_fuse_conn_info_opts;
pub const fuse_buf_flags = enum_fuse_buf_flags;
pub const fuse_buf_copy_flags = enum_fuse_buf_copy_flags;
pub const fuse_buf = struct_fuse_buf;
pub const fuse_bufvec = struct_fuse_bufvec;
pub const _fuse_off_t_must_be_64bit_dummy_struct = struct__fuse_off_t_must_be_64bit_dummy_struct;
pub const flock = struct_flock;
pub const __locale_struct = struct___locale_struct;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
pub const iovec = struct_iovec;
pub const fuse = struct_fuse;
pub const fuse_readdir_flags = enum_fuse_readdir_flags;
pub const fuse_fill_dir_flags = enum_fuse_fill_dir_flags;
pub const fuse_config = struct_fuse_config;
pub const fuse_operations = struct_fuse_operations;
pub const fuse_context = struct_fuse_context;
pub const fuse_fs = struct_fuse_fs;
