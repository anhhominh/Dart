import "package:test/test.dart";

int countSquares(int cuts) {
  return cuts == 0 ? 1 : 6 * cuts * cuts + 2;;
}

void main() {
  group("Basic Tests", () {
    
    test("Basic Tests", () {
      expect(countSquares(5), equals(152), reason: "n = 5");
      expect(countSquares(16), equals(1538), reason: "n = 16");
      expect(countSquares(23), equals(3176), reason: "n = 23");
    });
  });
}