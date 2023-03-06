import "package:test/test.dart";

String oddOrEven(List<int> array) {
  int sum = 0;
  if(array != null){
    sum = array.fold(0, (a , e) => a + e);
  } else sum = 0;
  if(sum %2 == 0)return "even";
  return "odd";
}

void main() {
  group("Sample Tests", () {
    test("Testing [1, 1]", () {
      expect(oddOrEven([1, 1]), equals("even"));
    });

    test("Testint [1, 3]", () {
      expect(oddOrEven([1, 3]), equals("even"));
    });

    test("Testing [-2, 3]", () {
      expect(oddOrEven([-2, 3]), equals("odd"));
    });

    test("Testing [-2, 2]", () {
      expect(oddOrEven([-2, 2]), equals("even"));
    });

    test("Testing [-2, 99, 99]", () {
      expect(oddOrEven([-2, 99, 99]), equals("even"));
    });

    test("Testing [-100, 99]", () {
      expect(oddOrEven([-100, 99]), equals("odd"));
    });

    test("Testing [17, 21, 99]", () {
      expect(oddOrEven([17, 21, 99]), equals("odd"));
    });

    test("Testing [-2, 2, 9, 8, 3]", () {
      expect(oddOrEven([-2, 2, 9, 8, 3]), equals("even"));
    });
  });
}