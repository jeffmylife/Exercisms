const std = @import("std");

pub fn isArmstrongNumber(num: u128) bool {
    if (num < 10) return true;
    var buf: [50]u8 = undefined;
    const slice = std.mem.tokenizeAny(u8, std.fmt.bufPrint(&buf, "{d}", .{num}) catch unreachable, "_").buffer;
    var sum: u128 = 0;
    for (slice) |s| {
        sum += std.math.pow(u128, s - '0', slice.len);
    }
    return sum == num;
}
