import 'dart:math' as math;
import "package:test/test.dart";
import 'dart:math';

String decompose(String nrStr, drStr) {
    List<String> ans = [];
    var a = int.parse(nrStr);
    var b = int.parse(drStr);
    while (a >= b) 
    {
        ans.add((a ~/ b).toString());
        a %= b;
    }
    while (a > 0)
    {
        var d = (b / a).ceil().toInt();
        ans.add("1/${d}");
        a = a * d - b;
        b *= d;
    }
    return "[${ans.join(', ')}]";
}

void main() {
  dotest(String nrStr, drStr, exp) {
    test("Testing for: $nrStr, $drStr", () =>
      expect(decompose(nrStr, drStr), equals(exp)));
  }
  group("fixed tests dec2FactString", () {
    dotest("3", "4", "[1/2, 1/4]");
    dotest("12", "4", "[3]");
    dotest("4", "5", "[1/2, 1/4, 1/20]");
    dotest("21", "23", "[1/2, 1/3, 1/13, 1/359, 1/644046]");
    dotest("66", "100", "[1/2, 1/7, 1/59, 1/5163, 1/53307975]");
    
  });
}