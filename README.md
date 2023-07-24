Presently this reimplements `libfuse/example/hello.c` in Zig. It
creates a limited filesystem in userland using FUSE. There is only one
file `/hello`.

# Building

Install libfuse and run

`zig build`

There is a Nix flake which will install Zig and libfuse. So you can do
the following first if you have Nix/NixOS.

`nix develop`

# Run

Create a directory for the mount point (e.g. `/run/user/1000/fuse`
instead of `/mnt`) and then start the daemon

```
zig build run -- -f /mnt
```

Then in another terminal you can do
`ls /mnt`, `stat /mnt/hello`, `cat /mnt/hello` etc.
