import "package:test/test.dart";

int solution(int n) {
  List<int> arr = [];
  List<int> multiple = [];
  int sum = 0;
  for (int i = 0; i < n; i++) {
    arr.add(i);
  }
  
  for (int i = 0; i < arr.length; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      multiple.add(i);
    }
  }
  
  multiple.forEach((e){
    sum = sum + e;
  });
  return sum;
}

void tester(int n, int exp) => test("Testing for $n", () => expect(solution(n), equals(exp)));
void main() {
  group("Basic tests", () {
    tester(10, 23);
    tester(20, 78);
    tester(200, 9168);
  });
}