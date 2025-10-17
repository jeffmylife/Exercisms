const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    _ = allocator;
    if (factors.len == 0) {
        return 0;
    }

    var sumtotal: u64 = 0;
    for (factors, 0..) |factor, i| {
        if (factor <= 0) break;

        var multiple = factor;
        while (multiple < limit) {
            // check if previous factors divide into current multiple and ignore!
            var skip = false;
            for (0..i) |i_previous_factor| {
                skip = multiple % factors[i_previous_factor] == 0;
                if (skip) {
                    // std.debug.print("   ^will skip bc {any}\n", .{multiple});
                    break;
                }
            }
            if (!skip) {
                sumtotal += multiple;
            }
            multiple += factor;
        }
    }
    return sumtotal;
}
