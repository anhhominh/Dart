import "dart:math";
import "package:test/test.dart";

double dist(double v, double mu)                    
{    
  double vs = v / 3.6;
  double d1 = vs * vs / (2 * mu * 9.81);
  double d2 = vs * 1;
  return d1 + d2;
}
double speed(double d, double mu)                   
{   
  double a = 1 / (2 * mu * 9.81);
  double b = 1;
  double c = -d;
  
  double vs = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  return vs * 3.6;
}

void main() {
  bool aux(double actual, double exp) {
    double r = (actual - exp).abs();
    bool inrange = r <= 1e-2;
    if (inrange == false) {
        print("abs(actual - expected) must be <= 1e-2 but was " + r.toString());
    }
    return inrange;
  }
  assertFuzzy(double actual, double exp) => 
    test("Actual $actual, Expect: $exp", () =>
        expect(aux(actual, exp), equals(true)));      
         
  group("fixed tests dist", () {
    assertFuzzy(dist(144, 0.3), 311.83146449201496);
    assertFuzzy(dist(92, 0.5), 92.12909477605366);
    assertFuzzy(dist(142, 0.2), 435.94398509960854);
    
  });
  group("fixed tests speed", () {
    assertFuzzy(speed(159, 0.8), 153.79671564846308);
    assertFuzzy(speed(164, 0.7), 147.91115701756493);
    assertFuzzy(speed(153, 0.7), 142.14404997566152);
    
  });
}
