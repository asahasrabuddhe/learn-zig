pub fn isIsogram(str: []const u8) bool {
    var seen: [26]bool = .{false} ** 26;
    for (str) |c| {
        const cur = switch (c) {
            'a'...'z' => |l| l - 'a',
            'A'...'Z' => |l| l - 'A',
            else => continue,
        };
        if (seen[cur]) return false;
        seen[cur] = true;
    }
    return true;
}
