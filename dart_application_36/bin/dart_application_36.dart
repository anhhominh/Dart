import 'dart:math' as math;
import "package:test/test.dart";
import 'dart:math';
List<int> seven(int m) {
  int count = 0;
  while(m > 99) {
    m = (m ~/ 10) - (2 * (m % 10)); 
    count++;
  }
  return [m,count];
}

void main() {
  dotest(int n, List<int> exp) => 
    test("Testing for $n", () => 
      expect(seven(n), equals(exp)));
  group("fixed tests", () {
    dotest(1021, [10, 2]);
    dotest(477557101, [28, 7]);
    dotest(477557102, [47, 7]); 
    dotest(109, [-8, 1]);
  });
}