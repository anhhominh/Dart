import 'dart:math' as math;
import "package:test/test.dart";

String stockSummary(List<String> lstOfArt, lstOf1stLetter) {
  if(lstOfArt.isEmpty) return '';
  List<String> result = [];
  for(int j = 0 ; j < lstOf1stLetter.length ; j++){
    int sum = 0;
    for(int i = 0 ; i < lstOfArt.length ; i++){
      List<String> list = lstOfArt[i].split(" ");
      if(lstOf1stLetter[j].codeUnitAt(0) == list[0].codeUnitAt(0)) sum = sum + int.parse(list[1]);
    }
     result.add("(${lstOf1stLetter[j]} : ${sum})");
  }
  return result.join(" - ");
}

void main() {
  dotest(List<String> lstOfArt, lstOf1stLetter, String exp) {
    test("Testing for: \n$lstOfArt\n$lstOf1stLetter", () =>
      expect(stockSummary(lstOfArt, lstOf1stLetter), equals(exp)));
  }
  group("fixed tests", () {
    var b = ["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"];
    var c = ["A", "B", "C", "D"];
    dotest(b, c, "(A : 0) - (B : 1290) - (C : 515) - (D : 600)");
    
    b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"];
    c = ["A", "B"];
    dotest(b, c, "(A : 200) - (B : 1140)");

  });
}
