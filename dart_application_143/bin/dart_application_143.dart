import "package:test/test.dart";
import "dart:math";
double stackHeight2d(int layers) {
  return layers == 0 ? 0 : ((layers - 1) * sqrt(3) / 2 + 1);
}

void main() {
  void doTest(int layers, double exp) {
    double EPSILON = 0.001;
    double actual = stackHeight2d(layers);
    if ((actual - exp).abs() <= EPSILON) expect(true, equals(true));
    else fail("Expected $exp (+/- $EPSILON)\nReceived $actual");
  }
  group('basic tests', () {
    test("test0", () => doTest(0, 0.0));
    test("test1", () => doTest(1, 1.0));
    test("test2", () => doTest(2, 1.866));
  });
}
