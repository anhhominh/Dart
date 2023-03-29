import "package:test/test.dart";

num makeNegative(n) {
  if(n==0) return 0;
  return n < 0 ? n : -n;
}

void main() {
  group("Fixed tests", () {
    test("Testing for 42", () {
      expect(makeNegative(42), equals(-42));
    });
    test("Testing for -9", () {
      expect(makeNegative(-9), equals(-9));
    });
    test("Testing for 0", () {
      expect(makeNegative(0), equals(0));
    });
    test("Testing for 1", () {
      expect(makeNegative(1), equals(-1));
    });
    test("Testing for -1", () {
      expect(makeNegative(-1), equals(-1));
    });
    test("Testing for 0.12", () {
      expect(makeNegative(0.12), equals(-0.12));
    });
    test("Testing for 0.00001", () {
      expect(makeNegative(0.00001), equals(-0.00001));
    });
    test("Testing for -0.00001", () {
      expect(makeNegative(-0.00001), equals(-0.00001));
    });
  });
}