import "package:test/test.dart";
import "dart:math";

BigInt calcMs(int n) {
  return BigInt.from(20).pow(n);
}

void main() {
  group("Basic Tests", () {
    
    test("Basic Tests", () {
      expect(calcMs(0), equals(BigInt.from(1)), reason: "n = 0");
      expect(calcMs(1), equals(BigInt.from(20)), reason: "n = 1");
      expect(calcMs(2), equals(BigInt.from(400)), reason: "n = 2");
      expect(calcMs(3), equals(BigInt.from(8000)), reason: "n = 3");
      expect(calcMs(4), equals(BigInt.from(160000)), reason: "n = 4");
      expect(calcMs(5), equals(BigInt.from(3200000)), reason: "n = 5");
      expect(calcMs(6), equals(BigInt.from(64000000)), reason: "n = 6");
    });
  });
}

