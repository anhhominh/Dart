import "package:test/test.dart";

bool negationValue(String str, bool val) {
  return str.length%2 == 0 ? val : !val;
}

void main() {
  group("Fixed tests", () {
    test('negationValue("!", false)', () => expect(negationValue("!", false), equals(true)));
    test('negationValue("!", true)', () => expect(negationValue("!", true), equals(false)));
  });
}
