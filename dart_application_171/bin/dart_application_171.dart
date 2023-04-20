import "package:test/test.dart";

int josephusSurvivor(int n, int k) {
   return n <= 1 ? 1 : (josephusSurvivor(n - 1, k) + k - 1) % n + 1;
}

void main() {
  group("Basic tests", () {
    test("josephusSurvivor(7, 3)", () => expect(josephusSurvivor(7, 3), equals(4)));
    test("josephusSurvivor(11, 19)", () => expect(josephusSurvivor(11, 19), equals(10)));
    test("josephusSurvivor(40, 3)", () => expect(josephusSurvivor(40, 3), equals(28)));
    test("josephusSurvivor(14, 2)", () => expect(josephusSurvivor(14, 2), equals(13)));
    test("josephusSurvivor(100, 1)", () => expect(josephusSurvivor(100, 1), equals(100)));
    test("josephusSurvivor(1, 300)", () => expect(josephusSurvivor(1, 300), equals(1)));
    test("josephusSurvivor(2, 300)", () => expect(josephusSurvivor(2, 300), equals(1)));
    test("josephusSurvivor(5, 300)", () => expect(josephusSurvivor(5, 300), equals(1)));
    test("josephusSurvivor(7, 300)", () => expect(josephusSurvivor(7, 300), equals(7)));
    test("josephusSurvivor(300, 300)", () => expect(josephusSurvivor(300, 300), equals(265)));
  });
}