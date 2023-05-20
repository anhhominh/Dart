import "package:test/test.dart";
import "dart:math";

bool fortune(int f0, double p, int c0, int n, double i) {
    int dem = 0;
    if(p==0)return true;
    while(dem<n-1){
      f0 = (f0 + f0 * p/100 - c0).floor();
      c0 = (c0 + c0 * i/100).floor();
      dem++;
      print(f0);
    }
    
    return f0 > 0 ? true : false;
}
void main() {
  testing(int f0, double p, int c0, int n, double i, bool exp) => 
    test("Testing for $f0 $p $c0 $n $i", () => 
      expect(fortune(f0, p, c0, n, i), equals(exp)));
  group("fixed tests", () {
    testing(100000, 1.0, 2000, 15, 1.0, true);
    testing(100000, 1.0, 9185, 12, 1.0, false);
    testing(100000000, 1.0, 100000, 50, 1.0, true);
    
  });
}

