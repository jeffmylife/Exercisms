const std = @import("std");
const mem = std.mem;

fn toUpper(char: u8) u8 {
    if (char >= 'a' and char <= 'z') {
        return char - 32;
    }
    return char;
}

pub fn abbreviate(allocator: mem.Allocator, words: []const u8) mem.Allocator.Error![]u8 {
    var arr = try std.ArrayList(u8).init();
    defer arr.deinit(allocator);

    var it = std.mem.splitAny(u8, words, " -_");
    while (it.next()) |word| {
        if (word.len == 0) continue;
        try arr.append(allocator, toUpper(word[0]));
    }

    return arr.toOwnedSlice(allocator);
}
