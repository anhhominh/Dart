import 'dart:math' as math;
import "package:test/test.dart";
import 'dart:math';

String convertFrac(lst) {
lst = lst.map((x) {
    int d = x[0].gcd(x[1]);
    print(d);
    return [x[0] ~/ d, x[1] ~/ d];
  });
  print(lst);
  final lcm = lst.fold(1, (r, x) => r * x[1] ~/ r.gcd(x[1]));
  return lst.map((x) => '(${x[0] * lcm ~/ x[1]},$lcm)').join();
}


void main() {
  dotest(List<List<int>> lst, String exp) {
    test("Testing for: \n$lst \n", () =>
      expect(convertFrac(lst), equals(exp)));
  }
  
  group("fixed tests", () {
    var lst = [ [2, 4], [1, 3], [1, 4] ];
    dotest(lst, "(6,12)(4,12)(3,12)");
    lst = [ [69, 130], [87, 1310], [3, 4] ];
    dotest(lst, "(18078,34060)(2262,34060)(25545,34060)");
    lst = [ [77, 130], [84, 131], [3, 4] ];
    dotest(lst, "(20174,34060)(21840,34060)(25545,34060)");
    lst = [ [6, 13], [187, 1310], [31, 41] ];
    dotest(lst, "(322260,698230)(99671,698230)(527930,698230)");
    lst = [ [8, 15], [7, 111], [4, 25] ];
    dotest(lst, "(1480,2775)(175,2775)(444,2775)");
    
  });
}