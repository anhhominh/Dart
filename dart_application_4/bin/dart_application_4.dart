import "package:test/test.dart";

List<int> invert(List<int> arr) {
  return arr.map((e) => -e).toList();
}

void main() {
  group('basic tests', () {
    test("Testing for [1, 2, 3, 4, 5]", () => expect(invert([1, 2, 3, 4, 5]), equals([-1, -2, -3, -4, -5])));
    test("Testing for [1, -2, 3, -4, 5]", () => expect(invert([1, -2, 3, -4, 5]), equals([-1, 2, -3, 4, -5])));
    test("Testing for []", () => expect(invert([]), equals([])));
    test("Testing for [0]", () => expect(invert([0]), equals([0])));
  });
}
