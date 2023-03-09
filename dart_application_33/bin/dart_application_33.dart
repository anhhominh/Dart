//Given an array of integers your solution should find the smallest integer.

import "package:test/test.dart";
int findSmallestInt(List<int> arr) {
  return arr.reduce(min);
}

main() {
  group("Fixed tests", () {
    test("Test 1", () => expect(findSmallestInt([3,4,5,1,7,2,4,7]), equals(1)));
    test("Test 2", () => expect(findSmallestInt([324,578,-12,647,34346,12,95,-500]), equals(-500)));
    test("Test 3", () => expect(findSmallestInt([-346,35467,234,0,254,-39,-999]), equals(-999)));
  });
}

