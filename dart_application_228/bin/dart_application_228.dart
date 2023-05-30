import "package:test/test.dart";
List<int> cantBeatSoJoin(List<List<int>> numbers) {
  numbers = numbers.where((n) => n.length > 0).toList();
  numbers.sort((a, b) => b.reduce((x, y) => x + y).compareTo(a.reduce((x, y) => x + y)));
  return numbers.expand((i) => i).toList();
}

void main() {
  group("Fixed tests", () {
    test("Testing for [[1, 2], [3, 4], [5, 6], [7, 8], [9]]", () {
      expect(cantBeatSoJoin([[1, 2], [3, 4], [5, 6], [7, 8], [9]]), equals([7, 8, 5, 6, 9, 3, 4, 1, 2]));
    });
    test("Testing for [[5, 1], [9, 14], [17, 23], [4, 1], [0, 1]]", () {
      expect(cantBeatSoJoin([[5, 1], [9, 14], [17, 23], [4, 1], [0, 1]]), equals([17, 23, 9, 14, 5, 1, 4, 1, 0, 1]));
    });
    test("Testing for [[13, 37], [43, 17], [2, 3], [45, 64], [1, 9]]", () {
      expect(cantBeatSoJoin([[13, 37], [43, 17], [2, 3], [45, 64], [1, 9]]), equals([45, 64, 43, 17, 13, 37, 1, 9, 2, 3]));
    });
    test("Testing for [[52, 11, 33, 222], [582, 192, 442, 512, 41], [23912], [2314], [2491, 2412, 84828]]", () {
      expect(cantBeatSoJoin([[52, 11, 33, 222], [582, 192, 442, 512, 41], [23912], [2314], [2491, 2412, 84828]]), equals([2491, 2412, 84828, 23912, 2314, 582, 192, 442, 512, 41, 52, 11, 33, 222]));
    });
    test("Testing for [[], [], [], []]", () {
      expect(cantBeatSoJoin([[], [], [], []]), equals([]));
    });
    test("Testing for [[], [], [0], []]", () {
      expect(cantBeatSoJoin([[], [], [0], []]), equals([0]));
    });
    test("Testing for [[1, 0, 1, 0, 1, 0], [0, 1, 0, 0, 1, 0, 0, 1], [0], []]", () {
      expect(cantBeatSoJoin([[1, 0, 1, 0, 1, 0], [0, 1, 0, 0, 1, 0, 0, 1], [0], []]), equals([1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0]));
    });
  });
}
