import "package:test/test.dart";
import "dart:math";

int getAverage(List<int> arr) {
  int sum = 0;
  for(int i = 0 ; i < arr.length ; i++){
    sum = sum + arr[i];
  }
  return (sum/arr.length).floor();
}

void main() {
  group("Fixed tests", () {
    test("Testing for [2, 2, 2, 2]", () => expect(getAverage([2, 2, 2, 2]), equals(2)));
    test("Testing for [1, 2, 3, 4, 5]", () => expect(getAverage([1, 2, 3, 4, 5]), equals(3)));
    test("Testing for [1, 1, 1, 1, 1, 1, 1, 2]", () => expect(getAverage([1, 1, 1, 1, 1, 1, 1, 2]), equals(1)));
  });
}
