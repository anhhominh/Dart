import "package:test/test.dart";
import 'dart:math';

int binToDec(bin) {
  return int.parse(bin, radix: 2);
}
void main() {
  group("Fixed tests", () {
    test("Testing for '1'", () {
      expect(binToDec("1"), equals(1));
    });
    test("Testing for '0'", () {
      expect(binToDec("0"), equals(0));
    });
    test("Testing for '1001001'", () {
      expect(binToDec("1001001"), equals(73));
    });
  });
}