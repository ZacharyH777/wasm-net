// This will be for later. We want to handle this with zig but cpp not quite
// supported for wasip2 yet. Atleast the bindgen side of things.

// If you feel this is incorrect, please feel free to let me know!
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "wasm_host",
        .target = target,
        .optimize = optimize,
    });

    exe.addCSourceFiles(.{
        .files = &.{
            "main.cpp",
            "test_networking.cpp",
            "bindings/example.cpp",
        },
        .flags = &.{
            "-std=c++20",
            "-DENABLE_NETWORKING",
        },
    });

    exe.addIncludePath(b.path("bindings"));
    exe.addIncludePath(b.path("include"));
    exe.addIncludePath(b.path("../../external/wasmtime-c-api"));

    exe.linkSystemLibrary("c++");

    exe.linkSystemLibrary("wasmtime");

    b.installArtifact(exe);

    const run_cmd = b.addRunArtifact(exe);

    run_cmd.step.dependOn(b.getInstallStep());

    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
