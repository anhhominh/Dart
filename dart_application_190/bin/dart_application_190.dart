import "package:test/test.dart";

int solve(String s) {
  List<String> num = [];
  for(int i = 0 ; i < s.length ; i++){
    if(s.codeUnitAt(i) >= 97 && s.codeUnitAt(i) <= 122)s = s.replaceAll(s[i]," ");
  }
  var list = s.split(" ");
  int max = 0;
  for(int i = 0 ; i < list.length ; i++){
    list[i].replaceAll(" ","");
    if(list[i] != ""){
      int tmp = int.parse(list[i]);
      if(tmp > max) max = tmp;
    }
  }
  return max;
}

void main() {
  group("Fixed tests", () {
    test("Testing for gh12cdy695m1", () => expect(solve('gh12cdy695m1'), equals(695)));
    test("Testing for 2ti9iei7qhr5", () => expect(solve('2ti9iei7qhr5'), equals(9)));
    test("Testing for vih61w8oohj5", () => expect(solve('vih61w8oohj5'), equals(61)));
    test("Testing for f7g42g16hcu5", () => expect(solve('f7g42g16hcu5'), equals(42)));
    test("Testing for lu1j8qbbb85", () => expect(solve('lu1j8qbbb85'), equals(85)));
  });
}
