import "package:test/test.dart";
import "dart:math";
int maxBall(int v0) {
  var v = v0 * 1000 * 10 / 3600;
  return (v / 9.81).round();
}

void main() {
  testequal(int v0, int exp) => 
    test("Testing for $v0", () => 
      expect(maxBall(v0), equals(exp)));
  group("fixed tests", () {
    testequal(37, 10);
    testequal(45, 13);
    testequal(99, 28);
    
  });
}