// Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.

import "package:test/test.dart";
int angle(int n) {
  return (n-2)*180;
}

void main() {
  void tester(int n, int exp) => test("Testing for $n", () => expect(angle(n), equals(exp)));
  group("basic tests", () {
    tester(3, 180);
    tester(4, 360);
  });
}