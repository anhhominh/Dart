import "package:test/test.dart";
import "dart:math";
bool isNice(List<int> arr) {
  List<int> values = [];
  arr.forEach((value){
    if(arr.contains(value + 1) || arr.contains(value - 1))
      values.add(value);
  });
  return values.length == arr.length && arr.length != 0;
}

void testing(arr, exp) {
  test("Testing for [${arr.join(', ')}]", () {
    expect(isNice(arr), equals(exp));
  });
}

void main() {
  group("Fixed tests", () {
    testing([0, 2, 19, 4, 4], false);
    testing([3, 2, 1, 0], true);
    testing([3, 2, 10, 4, 1, 6], false);
    testing([1, 1, 8, 3, 1, 1], false);
    testing([0, 1, 2, 3], true);
    testing([1, 2, 3, 4], true);
    testing([0, -1, 1], true);
    testing([0, 2, 3], false);
    testing([0], false);
    testing(<int>[], false);
    testing([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], true);
    testing([0, 1, 3, -2, 5, 4], false);
    testing([0, -1, -2, -3, -4], true);
    testing([1, -1, 3], false);
    testing([1, -1, 2, -2, 3, -3, 6], false);
    testing([2, 2, 3, 3, 3], true);
    testing([1, 1, 1, 2, 1, 1], true);
    testing([1, 2, 7, 8], true);
  });
}