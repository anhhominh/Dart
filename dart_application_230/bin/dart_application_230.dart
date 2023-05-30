import "package:test/test.dart";
import 'dart:math';

int oddest(List<int> a) {
  int oddness(int n) => n.isEven ? 0 : n == -1 ? 1000 : 1 + oddness(n >> 1);
  int m = a.map(oddness).fold(0, max);
  var xs = a.where((x) => oddness(x) == m);
  return xs.length == 1 ? xs.first : null;
}

void main() {
  void tester(i, o) => test("oddest($i)", () => expect(oddest(i), equals(o)));
  group('Example tests', () {
    tester([1, 2], 1);
    tester([1, 3], 3);
    tester([1, 5], null);
    tester([-1, -1], -1);
  });
}
