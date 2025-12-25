const std = @import("std");
const mem = std.mem;

pub fn abbreviate(allocator: mem.Allocator, words: []const u8) mem.Allocator.Error![]u8 {
    var arr = try std.ArrayList(u8).initCapacity(allocator, words.len);
    defer arr.deinit(allocator);

    var tokenWords = std.mem.tokenizeAny(u8, words, " -_");
    while (tokenWords.next()) |w| try arr.append(allocator, std.ascii.toUpper(w[0]));

    return arr.toOwnedSlice(allocator);
}
