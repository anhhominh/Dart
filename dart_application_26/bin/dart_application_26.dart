import "package:test/test.dart";
import 'dart:math';
/*
In this Kata, you will be given a string that may have mixed uppercase 
and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:
make as few changes as possible.
if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
*/
String solve(String s) {
  String newS = "";
  int dem1 = 0, dem2 = 0; // dem1 đếm số ký tự viết hoa và dem2 đếm số ký tự viết thường
  for(int i = 0; i < s.length; i++){
    if( 65 <= s.codeUnitAt(i) && s.codeUnitAt(i) <= 90 ) dem1++;
    if( 97 <= s.codeUnitAt(i) && s.codeUnitAt(i) <= 122 ) dem2++;//codeUnitAt () trả về đơn vị mã 16-bit tại chỉ mục đã cho.
  }
  dem1<dem2 ? newS = s.toLowerCase() : newS = s.toUpperCase();
  if(dem1 == dem2) newS = s.toLowerCase();
  return newS;
}

void main() {
  group("Basic tests", () {
    test("Testing for code", () => expect(solve("code"), equals("code")));
    test("Testing for CODe", () => expect(solve("CODe"), equals("CODE")));
    test("Testing for COde", () => expect(solve("COde"), equals("code")));
    test("Testing for Code", () => expect(solve("Code"), equals("code")));
  });
}
