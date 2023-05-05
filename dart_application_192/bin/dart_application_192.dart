import "package:test/test.dart";
import "dart:math";

int circleOfNumbers(int n, int fst) {
  int middle = (n/2).floor();
  int opposite = 0;
  if(fst == middle) return 0;
  else if(fst > middle) opposite = fst - middle;
       else opposite = fst + middle;
  return opposite;
}

void main() {
  group("Basic tests", () {
    test("circleOfNumbers(10, 2)", () => expect(circleOfNumbers(10, 2), equals(7)));
    test("circleOfNumbers(10, 7)", () => expect(circleOfNumbers(10, 7), equals(2)));
    test("circleOfNumbers(4, 1)", () => expect(circleOfNumbers(4, 1), equals(3)));
    test("circleOfNumbers(6, 3)", () => expect(circleOfNumbers(6, 3), equals(0)));
    test("circleOfNumbers(20, 0)", () => expect(circleOfNumbers(20, 0), equals(10)));
  });
}