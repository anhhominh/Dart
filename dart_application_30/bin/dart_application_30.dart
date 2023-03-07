import "package:test/test.dart";
/*
Write a function that accepts an integer n and a string s as parameters, 
and returns a string of s repeated exactly n times.
*/
String repeatString(int n, String s) {
  String repeat = "";
  while(n>0){
    repeat = repeat + s;
    n--;
  }
  return repeat;
}

void main() {
  group('basic tests', () {
    test('Testing for 4 and "a"', () => expect(repeatString(4, "a"), equals("aaaa")));
    test('Testing for 3 and "hello "', () => expect(repeatString(3, "hello "), equals("hello hello hello ")));
    test('Testing for 2 and "abc"', () => expect(repeatString(2, "abc"), equals("abcabc")));
  });
}