import "package:test/test.dart";

num quadratic(num a, num b, num c) {
  return -c / b;
}

void assertFuzzyEquals(a, b, c, [msg = ""]) {
  // max error
  num merr = 1e-12;
  print("Testing " + a.toString() + ", " + b.toStringAsExponential(12) + ", " + c.toString());
  num x = quadratic(a, b, c);
  bool smallest = x.abs() < 0.1;
  if (!smallest) {
    print("This root is not the good one");
  }
  num actual = a * x * x + b * x + c;
  print("Actual f(x)" + actual.toStringAsExponential(12));
  bool inrange = actual.abs() <= merr;
  if (!inrange) {
    msg = "Expected value near: 0 " + ", got: " + actual.toStringAsExponential(12) + ". Expected error <= " + merr.toStringAsExponential(12);
    print(msg);
  }
  bool correct = smallest && inrange;
  expect(correct, equals(true));
  if (!correct) {
    print("root is not good");
  }
  print("\n");
}

void main() {
  test("Basic-tests", () {
    assertFuzzyEquals(7, 4.00e+13, 8);
    assertFuzzyEquals(9, 1.00e+14, 1);
    assertFuzzyEquals(3, 3.00e+09, 1);
    assertFuzzyEquals(7, 4.00e+09, 7);
  });
}
