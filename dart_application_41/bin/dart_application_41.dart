// Given a non-empty array of integers, return the result of multiplying the values together in order. Example:
// [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24

import "package:test/test.dart";

int grow(List<int> arr) {
  return arr.reduce((a,e)=>a*e);
}

void main() {
  group("Basic tests", () {
    test("Testing for [1, 2, 3]", () => expect(grow([1, 2, 3]), equals(6)));
    test("Testing for [4, 1, 1, 1, 4]", () => expect(grow([4, 1, 1, 1, 4]), equals(16)));
    test("Testing for [2, 2, 2, 2, 2, 2]", () => expect(grow([2, 2, 2, 2, 2, 2]), equals(64)));
  });
}