import "package:test/test.dart";

import "dart:math";
List<dynamic> iterPi(double epsilon) {
  int i = 0, k = 1;
  double r = 0;
  for (int k = 1; (pi - r).abs() >= epsilon; k += 2, i++) {
    r += 4.0 / k * (i.isEven ? 1 : -1);
  }
  return [i, r.toStringAsFixed(10)];
}

void main() {
  bool aux(List<dynamic> actual, List<dynamic> exp) {
    int a0 = actual[0], e0 = exp[0];
    double a1 = double.parse(actual[1]), e1 = double.parse(exp[1]);
    bool inrange0 = a0 == e0;
    double r = (a1 - e1).abs();
    bool inrange1 = r <= 1e-9;
    if ((inrange0 == false) || (inrange1 == false)) {
        print("actual $actual, expected $exp");
    }
    return inrange0 && inrange1;
  }
  assertFuzzy(double eps, List<dynamic> actual, List<dynamic> exp) => 
    test("epsilon $eps", () =>
        expect(aux(actual, exp), equals(true)));   
 
  group("fixed tests", () {
    assertFuzzy(0.1, iterPi(0.1), [10, "3.0418396189"]);
    assertFuzzy(0.01, iterPi(0.01), [100, "3.1315929036"]);
    assertFuzzy(0.001, iterPi(0.001), [1000, "3.1405926538"]);
    assertFuzzy(0.0001, iterPi(0.0001), [10000, "3.1414926536"]);
    
  });
}
