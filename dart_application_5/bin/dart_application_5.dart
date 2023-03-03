import "package:test/test.dart";

int findDifference(List<int> a, List<int> b) {
  dynamic volume1 = 1, volume2 = 1;
  for(int i = 0 ; i < a.length ; i++ ){
    volume1 = volume1 * a[i];
  }
  for(int i = 0 ; i < b.length ; i++ ){
    volume2 = volume2 * b[i];
  }
  return (volume1 - volume2).abs();
}

void main() {
  group('basic tests', () {
    test("findDifference([3, 2, 5], [1, 4, 4])", () => expect(findDifference([3, 2, 5], [1, 4, 4]), equals(14)));
    test("findDifference([9, 7, 2], [5, 2, 2])", () => expect(findDifference([9, 7, 2], [5, 2, 2]), equals(106)));
    test("findDifference([11, 2, 5], [1, 10, 8])", () => expect(findDifference([11, 2, 5], [1, 10, 8]), equals(30)));
    test("findDifference([4, 4, 7], [3, 9, 3])", () => expect(findDifference([4, 4, 7], [3, 9, 3]), equals(31)));
    test("findDifference([15, 20, 25], [10, 30, 25])", () => expect(findDifference([15, 20, 25], [10, 30, 25]), equals(0)));
  });
}