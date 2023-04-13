import "package:test/test.dart";

String printerError(String s) {
  int count = 0;
  for(int i = 0 ; i < s.length ; i++){
    if(s.codeUnitAt(i) >= 110 && s.codeUnitAt(i) <= 122) count++;
  }
  return "${count}/${s.length}";
}

void main() {
  group('Fixed tests', () {
    test("Testing for aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz", () {
      expect(printerError("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"), equals("3/56"));
    });
    test("Testing for kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz", () {
      expect(printerError("kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"), equals("6/60"));
    });
    test("Testing for kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu", () {
      expect(printerError("kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu"), equals("11/65"));
    });
  });
}
