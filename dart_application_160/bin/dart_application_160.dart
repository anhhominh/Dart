import "package:test/test.dart";
int epidemic(int tm, int n, int s0, int i0, double b, double a) {
    double dt = tm / n;
    List<double> s = new List<double>.filled(n+1, 0); s[0] = s0.toDouble();
    List<double> i = new List<double>.filled(n+1, 0); i[0] = i0.toDouble();
    List<double> r = new List<double>.filled(n+1, 0); r[0] = 0.0;
    int k = 0;
    double mx = -1;
    while (k < n) {
        s[k+1] = s[k] - dt * b * s[k] * i[k];
        i[k+1] = i[k] + dt * (b * s[k] * i[k] - a * i[k]);
        r[k+1] = r[k] + dt * i[k] * a;
        if (i[k+1] > mx) mx = i[k+1];
        k++;
    }
    return mx.toInt();
}

void main() {
  bool aux(int tm, int n, int s0, int i0, double b, double a, int exp) {
    int actual = epidemic(tm, n, s0, i0, b, a);
    int r = (actual - exp).abs();
    bool inrange = r <= 1;
    if (inrange == false) {
        print("abs(actual - expected) must be <= 1 but was " + r.toString());
    }
    return inrange;
  }
  dotest(int tm, int n, int s0, int i0, double b, double a, int exp) => 
    test("Testing for $tm $n $s0 $i0 $b $a", () =>
        expect(aux(tm, n, s0, i0, b, a, exp), equals(true)));      
         
  group("fixed tests", () {
    dotest(18, 432, 1004, 1, 0.00209, 0.51, 420);
    dotest(12, 288, 1007, 2, 0.00206, 0.45, 461);
    dotest(13, 312, 999, 1, 0.00221, 0.55, 409);
    
  });
}
