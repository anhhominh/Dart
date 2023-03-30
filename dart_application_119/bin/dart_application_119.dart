import "package:test/test.dart";
int binaryArrayToNumber(List<int> arr) {
  dynamic number = 0;
  for(int i = 0 ; i < arr.length ; i++){
    if(arr[i] == 1) number = number + pow(2,arr.length - 1 - i);
  }
  return number;
}import "dart:math";


void main() {
  group('Fixed tests', () {
    test("Testing for [0, 0, 0, 1]", () => expect(binaryArrayToNumber([0, 0, 0, 1]), equals(1)));
    test("Testing for [0, 0, 1, 0]", () => expect(binaryArrayToNumber([0, 0, 1, 0]), equals(2)));
    test("Testing for [1, 1, 1, 1]", () => expect(binaryArrayToNumber([1, 1, 1, 1]), equals(15)));
    test("Testing for [0, 1, 1, 0]", () => expect(binaryArrayToNumber([0, 1, 1, 0]), equals(6)));
  });
}
