//Make a simple function called greet that returns the most-famous "hello world!".

import "package:test/test.dart";

String greet(){
  return "hello world!";
}

// You should return hello world!
void main() {
  test('Return the correct string', () {
    expect(greet(), equals("hello world!"));
  });
}
