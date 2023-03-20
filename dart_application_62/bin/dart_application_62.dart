import "package:test/test.dart";

int nextHappyYear(year) {
  // your code here
}

void main() {
  group("Fixed tests", () {
    test("Testing for 1001", () {
      expect(nextHappyYear(1001), equals(1023));
    });
    test("Testing for 1123", () {
      expect(nextHappyYear(1123), equals(1203));
    });
    test("Testing for 2001", () {
      expect(nextHappyYear(2001), equals(2013));
    });
    test("Testing for 2334", () {
      expect(nextHappyYear(2334), equals(2340));
    });
    test("Testing for 3331", () {
      expect(nextHappyYear(3331), equals(3401));
    });
    test("Testing for 1987", () {
      expect(nextHappyYear(1987), equals(2013));
    });
    test("Testing for 5555", () {
      expect(nextHappyYear(5555), equals(5601));
    });
    test("Testing for 7712", () {
      expect(nextHappyYear(7712), equals(7801));
    });
    test("Testing for 8088", () {
      expect(nextHappyYear(8088), equals(8091));
    });
    test("Testing for 8999", () {
      expect(nextHappyYear(8999), equals(9012));
    });
  });
}
