import "package:test/test.dart";
/*
Introduction
The first century spans from the year 1 up to and including the year 100, 
the second century - from the year 101 up to and including the year 200, etc.
Task
Given a year, return the century it is in.
*/
int century(year) {
  if(year <= 100 && year >= 1) return 1;
  int n = (year/100).toInt();
  if(year%100 >= 1) return n + 1;
  return n;
}
void main() {
  group("Basic tests", () {
    test("Testing for 1705", () {
      expect(century(1705), equals(18));
    });
    test("Testing for 1900", () {
      expect(century(1900), equals(19));
    });
    test("Testing for 1601", () {
      expect(century(1601), equals(17));
    });
    test("Testing for 2000", () {
      expect(century(2000), equals(20));
    });
    test("Testing for 89", () {
      expect(century(89), equals(1));
    });
  });
}
