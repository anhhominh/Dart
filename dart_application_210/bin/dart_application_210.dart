import "package:test/test.dart";
List<int> monkeyCount(int n) {
  List<int> monkey = [];
  for(int i = 1 ; i <= n ; i++){
    monkey.add(i);
  }
  return monkey;
}

void main() {
  group("Fixed tests", () {
    test("Testing for 5", () {
      expect(monkeyCount(5), equals([1, 2, 3, 4, 5]));
    });
    test("Testing for 3", () {
      expect(monkeyCount(3), equals([1, 2, 3]));
    });
    test("Testing for 9", () {
      expect(monkeyCount(9), equals([1, 2, 3, 4, 5, 6, 7, 8, 9]));
    });
    test("Testing for 10", () {
      expect(monkeyCount(10), equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
    });
    test("Testing for 20", () {
      expect(monkeyCount(20), equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]));
    });
  });
}