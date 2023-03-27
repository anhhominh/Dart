import "package:test/test.dart";

String solve(String s) {
  int demUpper = 0;
  int demLower = 0;
  for(int i = 0 ; i < s.length ; i++){
    if(s.codeUnitAt(i) >= 97 && s.codeUnitAt(i) <= 122) demLower++;
    if(s.codeUnitAt(i) >= 65 && s.codeUnitAt(i) <= 90) demUpper++;
  }
  return demLower>=demUpper ? s.toLowerCase() : s.toUpperCase();
}

void main() {
  group("Basic tests", () {
    test("Testing for code", () => expect(solve("code"), equals("code")));
    test("Testing for CODe", () => expect(solve("CODe"), equals("CODE")));
    test("Testing for COde", () => expect(solve("COde"), equals("code")));
    test("Testing for Code", () => expect(solve("Code"), equals("code")));
  });
}
