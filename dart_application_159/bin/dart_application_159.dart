import 'dart:math' as math;
import "package:test/test.dart";

String primeFactors(int n){
    if (n < 2) return "";
    String s = "";
    int factor = 2;
    List<int> lstFactors = [];
    while (n / factor != 1) {
      if (n % factor == 0) {
        lstFactors.add(factor);
        n = n ~/ factor;
        factor = 2;
      } else {
        factor++;
      }
    }
  lstFactors.add(factor);
  var counts = lstFactors.fold<Map<int, int>>({}, (map, element) {
    map[element] = (map[element] ?? 0) + 1;
    return map;
  });
  var onlyKey = counts.entries.toList();
  var onlyValues = counts.values.toList();
  for(int i = 0 ; i < counts.length ; i++){
    if(onlyValues[i] > 1 )s = s + "(${onlyKey[i].key}**${onlyValues[i]})";
    else s = s + "(${onlyKey[i].key})";
  }
  return s;
}

void main() {
  dotest(int n, String exp) {
    test("Testing for: \n$n \n", () =>
      expect(primeFactors(n), equals(exp)));
  }
  group("fixed tests", () {
    dotest(7775460, "(2**2)(3**3)(5)(7)(11**2)(17)");
    dotest(7919, "(7919)");
    dotest(17*17*93*677, "(3)(17**2)(31)(677)");
    dotest(933555431, "(7537)(123863)");
    dotest(342217392, "(2**4)(3)(11)(43)(15073)");
    
  });
}
