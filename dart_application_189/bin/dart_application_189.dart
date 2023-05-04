import "package:test/test.dart";
int lastChair(int n) {
  // your code here
  return n-1;
}

void main() {
  group("sample test", () {
    test("Testing for 10", () => expect(lastChair(10), equals(9)));
  });
}