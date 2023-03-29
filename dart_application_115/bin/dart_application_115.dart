import "package:test/test.dart";
import 'dart:math';
int friends(int n) => n<3 ?0 :(log(n-1) / log(2)).floor();

void main() {
  void tester(int n, int exp) => test("Testing for $n", () => expect(friends(n), equals(exp)));
  group("example tests", () {
    tester(0, 0);
    tester(1, 0);
    tester(2, 0);
  });
}
