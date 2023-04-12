import "package:test/test.dart";

List<int> extraPerfect(n) {
  List<int> number = [];
  for(int i = 0 ; i <= n ; i++){
    dynamic binaryNumber = i.toRadixString(2);
    if(int.parse(binaryNumber[0]) == 1 && int.parse(binaryNumber[binaryNumber.length-1]) == 1) number.add(i);
  }
  return number;
}

void main() {
  group('Fixed tests', () {
    test("Testing for 3", () {
      expect(extraPerfect(3), equals([1, 3]));
    });
    test("Testing for 5", () {
      expect(extraPerfect(5), equals([1, 3, 5]));
    });
    test("Testing for 7", () {
      expect(extraPerfect(7), equals([1, 3, 5, 7]));
    });
    test("Testing for 28", () {
      expect(extraPerfect(28), equals([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27]));
    });
    test("Testing for 39", () {
      expect(extraPerfect(39), equals([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39]));
    });
  });
}