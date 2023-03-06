import "package:test/test.dart";
/*
In this kata you will create a function that 
takes in a list and returns a list with the reverse order.
*/
List<int> reverseList(List<int> list) {
  return list.reversed.toList();
}

void main() {
  group("should reverse some sample arrays", () {
    test("sample array", () {
      expect(reverseList([1,2,3,4]), equals([4,3,2,1]));
    });
    test("sample array", () {
      expect(reverseList([3,1,5,4]), equals([4,5,1,3]));
    });
  });
}
