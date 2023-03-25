import "package:test/test.dart";
import "dart:math";
List<int> oddOnesOut(List<int> nums) {
  var map = Map();
  List<int> oddOnesOut = [];
  nums.forEach((element) {
    if(!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });
  nums.forEach((element) {
    int tmp = map[element];
    if(tmp %2 == 0) {
      oddOnesOut.add(element);
    }
  });
  return oddOnesOut;
}
void main() {
  group("Fixed tests", () {
    test("Testing for [1, 2, 3, 1, 3, 3]", () {
      expect(oddOnesOut([1, 2, 3, 1, 3, 3]), equals([1, 1]));
    });
    test("Testing for [75, 68, 75, 47, 68]", () {
      expect(oddOnesOut([75, 68, 75, 47, 68]), equals([75, 68, 75, 68]));
    });
    test("Testing for [42, 72, 32, 4, 94, 82, 67, 67]", () {
      expect(oddOnesOut([42, 72, 32, 4, 94, 82, 67, 67]), equals([67, 67]));
    });
    test("Testing for [100, 100, 5, 5, 100, 50, 68, 50, 68, 50, 68, 5, 100]", () {
      expect(oddOnesOut([100, 100, 5, 5, 100, 50, 68, 50, 68, 50, 68, 5, 100]), equals([100, 100, 100, 100]));
    });
    test("Testing for [82, 86, 71, 58, 44, 79, 50, 44, 79, 67, 82, 82, 55, 50]", () {
      expect(oddOnesOut([82, 86, 71, 58, 44, 79, 50, 44, 79, 67, 82, 82, 55, 50]), equals([44, 79, 50, 44, 79, 50]));
    });
  });
}