// Write a function which converts the input string to uppercase.
import 'dart:async';
import 'dart:math' as math;
import "package:test/test.dart";

String makeUpperCase(String str) {
  return str.toUpperCase();
}


void main() {
  group("Basic tests", () {
    test('Testing for "hello"', () => expect(makeUpperCase("hello"), equals("HELLO")));
    test('Testing for "hello world"', () => expect(makeUpperCase("hello world"), equals("HELLO WORLD")));
    test('Testing for "hello world !"', () => expect(makeUpperCase("hello world !"), equals("HELLO WORLD !")));
    test('Testing for "heLlO wORLd !"', () => expect(makeUpperCase("heLlO wORLd !"), equals("HELLO WORLD !")));
    test('Testing for "1,2,3 hello world!"', () => expect(makeUpperCase("1,2,3 hello world!"), equals("1,2,3 HELLO WORLD!")));
  });
}
