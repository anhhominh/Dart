import "package:test/test.dart";

int square(int n) {
  return n*n;
}

void main() {
  group("Basic Tests", () {
    
    test("Basic Tests", () {
      expect(square(2), equals(4), reason: "n = 2");
      expect(square(50), equals(2500), reason: "n = 50");
      expect(square(1), equals(1), reason: "n = 1");
    });
  });
}
