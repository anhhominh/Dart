import "package:test/test.dart";

bool betterThanAverage(List<int> classPoints, int yourPoints) {
  int sum = 0;
  for(int i = 0 ; i < classPoints.length ; i++){
    sum = sum + classPoints[i];
  }
  int tb = (sum/classPoints.length).floor();
  return yourPoints > tb ? true : false;
}
void main() {
  group("Fixed tests", () {
    test("betterThanAverage([2, 3], 5)", () => expect(betterThanAverage([2, 3], 5), equals(true)));
    test("betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75)", () => expect(betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75), equals(true)));
    test("betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69)", () => expect(betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69), equals(true)));
    test("betterThanAverage([41, 75, 72, 56, 80, 82, 81, 33], 50)", () => expect(betterThanAverage([41, 75, 72, 56, 80, 82, 81, 33], 50), equals(false)));
    test("betterThanAverage([29, 55, 74, 60, 11, 90, 67, 28], 21)", () => expect(betterThanAverage([29, 55, 74, 60, 11, 90, 67, 28], 21), equals(false)));
  });
}