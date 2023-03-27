import "package:test/test.dart";

int maxTriSum(nums) {
  var number = nums.toSet().toList();
  number.sort();
  return number[number.length - 1] + number[number.length - 2] + number[number.length - 3];
}

void main() {
  group('Fixed tests', () {
    test("Testing for [3, 2, 6, 8, 2, 3]", () {
      expect(maxTriSum([3, 2, 6, 8, 2, 3]), equals(17));
    });
    test("Testing for [2, 9, 13, 10, 5, 2, 9, 5]", () {
      expect(maxTriSum([2, 9, 13, 10, 5, 2, 9, 5]), equals(32));
    });
    test("Testing for [2, 1, 8, 0, 6, 4, 8, 6, 2, 4]", () {
      expect(maxTriSum([2, 1, 8, 0, 6, 4, 8, 6, 2, 4]), equals(18));
    });
    test("Testing for [-3, -27, -4, -2, -27, -2]", () {
      expect(maxTriSum([-3, -27, -4, -2, -27, -2]), equals(-9));
    });
    test("Testing for [-14, -12, -7, -42, -809, -14, -12]", () {
      expect(maxTriSum([-14, -12, -7, -42, -809, -14, -12]), equals(-33));
    });
    test("Testing for [-13, -50, 57, 13, 67, -13, 57, 108, 67]", () {
      expect(maxTriSum([-13, -50, 57, 13, 67, -13, 57, 108, 67]), equals(232));
    });
    test("Testing for [-7, 12, -7, 29, -5, 0, -7, 0, 0, 29]", () {
      expect(maxTriSum([-7, 12, -7, 29, -5, 0, -7, 0, 0, 29]), equals(41));
    });
    test("Testing for [-2, 0, 2]", () {
      expect(maxTriSum([-2, 0, 2]), equals(0));
    });
    test("Testing for [-2, -4, 0, -9, 2]", () {
      expect(maxTriSum([-2, -4, 0, -9, 2]), equals(0));
    });
    test("Testing for [-5, -1, -9, 0, 2]", () {
      expect(maxTriSum([-5, -1, -9, 0, 2]), equals(1));
    });
  });
}