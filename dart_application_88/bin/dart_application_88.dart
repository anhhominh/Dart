import "package:test/test.dart";

int positiveSum(List<int> arr) {
  int sum = 0;
  arr.forEach((e){
    if(e>0) sum = sum + e;
  });
  return sum;
}

void main() {
  group("fixed tests", () {
    test("Testing for [1, 2, 3, 4, 5]", () => expect(positiveSum([1, 2, 3, 4, 5]), equals(15)));
    test("Testing for [1, -2, 3, 4, 5]", () => expect(positiveSum([1, -2, 3, 4, 5]), equals(13)));
    test("Testing for []", () => expect(positiveSum([]), equals(0)));
    test("Testing for [-1, -2, -3, -4, -5]", () => expect(positiveSum([-1, -2, -3, -4, -5]), equals(0)));
    test("Testing for [-1, 2, 3, 4, -5]", () => expect(positiveSum([-1, 2, 3, 4, -5]), equals(9)));
  });
}