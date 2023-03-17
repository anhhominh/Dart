import 'dart:math' as math;
import "package:test/test.dart";
int gt(n){
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result = result * i;
  }
  return result;
}
int checkChoose(int m, n) {
  for(int i = 0 ; i <= n ; i++){
    if((gt(n)/(gt(i)*gt(n-i))).toInt() == m ) return i;
  }
  return -1;
}
void main() {
  dotest(int m, n, exp) {
    test("Testing for $m $n", () =>
      expect(checkChoose(m, n), equals(exp)));
  }
  group("fixed tests", () {
    dotest(6, 4, 2);
    dotest(4, 4, 1);
    dotest(4, 2, -1);
    dotest(35, 7, 3);
    dotest(184756, 20, 10);
    
  });
}
