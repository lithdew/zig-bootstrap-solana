export fn foo() void {
    var a: f32 = 2;
    _ = @floatToInt(comptime_int, a);
}
export fn bar() void {
    var a: u32 = 2;
    _ = @intToFloat(comptime_float, a);
}

// error
// backend=stage1
// target=native
// is_test=1
//
// tmp.zig:3:35: error: unable to evaluate constant expression
// tmp.zig:7:37: error: unable to evaluate constant expression
