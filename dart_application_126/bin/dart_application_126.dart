import "package:test/test.dart";


num sum(List<num> arr) {
  dynamic result = 0;
  if(arr.isEmpty) return 0;
  if(arr.isNotEmpty){
    arr.forEach((e){
      result = result + e;
    });
  }
  return result;
}

void main() {
  group("Fixed tests", () {
    test("Testing for []", () => expect(sum([]), equals(0)));
    test("Testing for [5]", () => expect(sum([5]), equals(5)));
    test("Testing for [-5]", () => expect(sum([-5]), equals(-5)));
    test("Testing for [1, 2, 3.4, 4.3]", () => expect(sum([1, 2, 3.4, 4.3]), equals(10.7)));
    test("Testing for [1, -3, 2, 3, 4, -1]", () => expect(sum([1, -3, 2, 3, 4, -1]), equals(6)));
  });
}
