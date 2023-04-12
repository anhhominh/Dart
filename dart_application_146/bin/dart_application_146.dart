import "package:test/test.dart";
import "dart:math";
double areaOfPolygonInsideCircle(double r, int n) {
    // Side and radius cannot be negative
    if (r < 0 && n < 0)
        return -1;
    // Area
    // degree converted to radians
    dynamic A = ((r * r * n) * sin((360 / n) * pi / 180)) / 2;
 
    return double.parse(A.toStringAsFixed(3));
}

void main() {
  void testing(double r, int n, double e) => test("areaOfPolygonInsideCircle($r, $n)", () => expect(areaOfPolygonInsideCircle(r, n), equals(e)));
  group('Basic tests', () {
    testing(3, 3, 11.691);
    testing(2, 4, 8);
    testing(2.5, 5, 14.86);
  });
}

