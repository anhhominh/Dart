import "package:test/test.dart";
import "dart:io";
import 'dart:core';

String helloWorld() => String.fromCharCodes([72, 101, 108, 108, 111, 44, 32, 87, 111, 114, 108, 100, 33]);

void main() {
  group("Hello World Without strings", () {
    String userCode = new File("/workspace/solution.txt").readAsStringSync();
    test("Doesn't use double quotes", () {
      expect(userCode.contains('"'), equals(false));
    });
    test("Doesn't use single quotes", () {
      expect(userCode.contains("'"), equals(false));
    });
    test("Returns 'Hello, World!'", () {
      expect(helloWorld(), equals('Hello, World!'));
    });
  });
}
