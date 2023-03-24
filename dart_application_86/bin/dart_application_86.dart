import "package:test/test.dart";

String bool_to_word(bool boolean) {
  return boolean ? "Yes" : "No";
}

void main() {
  test('Tests', () {
    expect(bool_to_word(true), equals("Yes"));
    expect(bool_to_word(false), equals("No"));
  });
}
