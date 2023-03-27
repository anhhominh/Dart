import "package:test/test.dart";

int nbYear(int p0, double percent, int aug, int p) {
  dynamic tong = p0;
  int dem = 0;
  while(tong < p){
    tong = tong + (tong * percent/100).toInt() + aug;
    dem++;
  }
  return dem;
}

void main() {
  group('basic tests', () {
    test("nbYear(1500, 5, 100, 5000)", () => expect(nbYear(1500, 5, 100, 5000), equals(15)));
    test("nbYear(1500000, 2.5, 10000, 2000000)", () => expect(nbYear(1500000, 2.5, 10000, 2000000), equals(10)));
    test("nbYear(1500000, 0.25, 1000, 2000000)", () => expect(nbYear(1500000, 0.25, 1000, 2000000), equals(94)));
    test("nbYear(1500000, 0.25, -1000, 2000000)", () => expect(nbYear(1500000, 0.25, -1000, 2000000), equals(151)));
    test("nbYear(1500000, 0.25, 1, 2000000)", () => expect(nbYear(1500000, 0.25, 1, 2000000), equals(116)));
    test("nbYear(1500000, 0.0, 10000, 2000000)", () => expect(nbYear(1500000, 0.0, 10000, 2000000), equals(50)));
  });
}