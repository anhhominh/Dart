import "package:test/test.dart";
import "dart:math";

int rectangleRotation(int a, int b) {
  var ld = (a / sqrt(2)) / 2;
  var sd = (b / sqrt(2)) / 2;
  var rectExt = [2 * (ld).floor() + 1, 2 * (sd).floor() + 1];
  var rectInt = [2 * (ld).floor() + (ld % 1 < 0.5 ? 0 : 2), 2 * (sd).floor()
                 + (sd % 1 < 0.5 ? 0 : 2)];
  return rectExt[0] * rectExt[1] + rectInt[0] * rectInt[1];
}

void tester(int a, int b, int exp) => test("rectangleRotation($a, $b)", () => expect(rectangleRotation(a, b), equals(exp)));
void main() {
  group("Basic tests", () {
    tester(6, 4, 23);
    tester(30, 2, 65);
    tester(8, 6, 49);
    tester(16, 20, 333);
  });
}
