import "package:test/test.dart";
import "dart:math";
int minSum(arr) {
  arr.sort();
  dynamic sum = 0;
  for(int i = 0 ; i < arr.length/2; i++){
    sum = sum + arr[i]*arr[arr.length - 1 - i];
  }
  return sum;
}

void main() {
  group("Fixed tests", () {
    test("Testing for [5, 4, 2, 3]", () {
      expect(minSum([5, 4, 2, 3]), equals(22));
    });
    test("Testing for [12, 6, 10, 26, 3, 24]", () {
      expect(minSum([12, 6, 10, 26, 3, 24]), equals(342));
    });
    test("Testing for [9, 2, 8, 7, 5, 4, 0, 6]", () {
      expect(minSum([9, 2, 8, 7, 5, 4, 0, 6]), equals(74));
    });
    test("Testing for [1, 2, 3, 4]", () {
      expect(minSum([1, 2, 3, 4]), equals(10));
    });
    test("Testing for [5, 1, 9, 3, 7, 7, 2, 10]", () {
      expect(minSum([5, 1, 9, 3, 7, 7, 2, 10]), equals(84));
    });
  });
}
