// Implement a function which convert the given boolean value into its string representation.

// Note: Only valid inputs will be given.
import "package:test/test.dart";

String booleanToString(bool b) {
  return b ? "true" : "false";
}

void main() {
  group("Fixed tests", () {
    test("Testing for true", () => expect(booleanToString(true), equals("true")));
    test("Testing for false", () => expect(booleanToString(false), equals("false")));
  });
}
