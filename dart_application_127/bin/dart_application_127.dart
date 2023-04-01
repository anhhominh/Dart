import "package:test/test.dart";

bool isUpperCase(String str) {
  for(int i = 0 ; i < str.length ; i++){
    if(str.codeUnitAt(i) >= 97 && str.codeUnitAt(i) <= 122) return false;
  }
  return true;
}

void main() {
  group("Fixed tests", () {
    test("Testing for c", () => expect(isUpperCase('c'), equals(false)));
    test("Testing for C", () => expect(isUpperCase('C'), equals(true)));
    test("Testing for hello I AM DONALD", () => expect(isUpperCase('hello I AM DONALD'), equals(false)));
    test("Testing for HELLO I AM DONALD", () => expect(isUpperCase('HELLO I AM DONALD'), equals(true)));
    test("Testing for ACSKLDFJSgSKLDFJSKLDFJ", () => expect(isUpperCase('ACSKLDFJSgSKLDFJSKLDFJ'), equals(false)));
    test("Testing for ACSKLDFJSGSKLDFJSKLDFJ", () => expect(isUpperCase('ACSKLDFJSGSKLDFJSKLDFJ'), equals(true)));
  });
}