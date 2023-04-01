import "package:test/test.dart";
import 'dart:math';
int gps(int s, List<double> x) {
  List<int> v = [];
  for(int i = 0 ; i < x.length - 1 ; i++){
    int tmp = ((3600 * (x[i+1] - x[i]))/s).floor();
    v.add(tmp);
  }
  v.sort();
  return v.length !=0 ? v[v.length - 1] : 0;
}

void main() {
  group("gps", () {
    void testing(int actual, int exp) {
      int r = (actual - exp).abs();
      expect(r <= 1, equals(true), reason: "(actual - expected).abs must be <= 1 but was ${r.toStringAsFixed(2)}");
    }
    test("Basic tests", () {
      testing(gps(20, [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61]), 41);
      testing(gps(12, [0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25]), 219);
      testing(gps(20, [0.0, 0.18, 0.36, 0.54, 0.72, 1.05, 1.26, 1.47, 1.92, 2.16, 2.4, 2.64, 2.88, 3.12, 3.36, 3.6, 3.84]), 80);
      testing(gps(19, []), 0);
      testing(gps(19, [0.0]), 0);
    });
  });
}

