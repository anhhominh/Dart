import "package:test/test.dart";
int nthEven(int n) {
  int count = 0;
  int answer = -2;
  while(count < n){
    answer = answer + 2;
    count++;
  }
  return answer;
}
void main() {
  group('Fixed tests', () {
    test("Testing for 1", () => expect(nthEven(1), equals(0)));
    test("Testing for 2", () => expect(nthEven(2), equals(2)));
    test("Testing for 3", () => expect(nthEven(3), equals(4)));
    test("Testing for 100", () => expect(nthEven(100), equals(198)));
    test("Testing for 1298734", () => expect(nthEven(1298734), equals(2597466)));
  });
}
