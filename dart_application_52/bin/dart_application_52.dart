import "package:test/test.dart";

bool checkForFactor(int base, int factor) {
  return base%factor == 0 ? true : false;
}

void main() {
  group('basic tests', () {
    test("should return true", () {
      expect(checkForFactor(10, 2), equals(true));
      expect(checkForFactor(63, 7), equals(true));
      expect(checkForFactor(2450, 5), equals(true));
      expect(checkForFactor(24612, 3), equals(true));
    });
    test("should return false", () {
      expect(checkForFactor(9, 2), equals(false));
      expect(checkForFactor(653, 7), equals(false));
      expect(checkForFactor(2453, 5), equals(false));
      expect(checkForFactor(24617, 3), equals(false));
    });
  });
}