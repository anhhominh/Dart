import "package:test/test.dart";
import 'dart:math' as math;
double simpson(int n) {            
    double a = 0;
    double b = math.pi;
    double h = (b - a) / n;
    double f(x) => (3/2) * math.pow(math.sin(x), 3);
    double sum(List<double> ls) => ls.length > 0 ? ls.reduce((a, b) => a + b): 0;
    double p1 = ((b - a)/(3 * n));
    double p2 = f(a) + f(b);
    double p3 = 4 * sum(List.generate(n ~/ 2, (i) => f(a + (2 * (i + 1) - 1) * h)));
    double p4 = 2 * sum(List.generate(n ~/ 2 - 1, (i) => f(a + 2 * (i + 1) * h)));
    return p1 * (p2 + p3 + p4);
}

void main() {
  bool aux(int n, double exp) {
    double actual = simpson(n);
    double r = (actual - exp).abs();
    bool inrange = r <= 1e-6;
    if (inrange == false) {
        print("abs(actual - expected) must be <= 1e-6 but was " + r.toString());
    }
    return inrange;
  }
  assertFuzzy(int n, double exp) => 
    test("Testing for n: Expect: $exp", () =>
        expect(aux(n, exp), equals(true)));      
         
  group("fixed tests", () {
    assertFuzzy(290, 1.9999999986);
    assertFuzzy(72, 1.9999996367);
    assertFuzzy(252, 1.9999999975);
    
  });
}

