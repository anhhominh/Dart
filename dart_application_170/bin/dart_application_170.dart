import "package:test/test.dart";

Map<String, int> hexToRGB(String hex) {
    return {
    "r": int.parse(hex.substring(1,3), radix: 16),
    "g": int.parse(hex.substring(3,5), radix: 16),
    "b": int.parse(hex.substring(5,7), radix: 16)
  };  
}

void main() {
  group('Basic tests', () {
    test("Testing #FF9933", () => expect(hexToRGB("#FF9933"), { "r": 255, "g": 153, "b": 51 }));
    test("Testing #FA13F3", () => expect(hexToRGB("#FA13F3"), { "r": 250, "g": 19, "b": 243 }));
    test("Testing #84002C", () => expect(hexToRGB("#84002C"), { "r": 132, "g": 0, "b": 44 }));
  });
}
