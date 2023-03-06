import "package:test/test.dart";
/*
Your task is to make a function that can take any non-negative integer as an argument 
and return it with its digits in descending order. 
Essentially, rearrange the digits to create the highest possible number.
*/
int descendingOrder(n) {
  List<int> numbers = [];
  int descendingOrder = 0;
  int start = int.parse(n.toString());
  if(start<=10) descendingOrder = start;
  else {
    while(start != 0){
    int tmp = start % 10;
    numbers.add(tmp);
    start=(start/10).toInt();
  }
  numbers.sort((num1, num2) => num2 - num1);
  numbers.forEach((e) => descendingOrder = descendingOrder*10 + e);
  }
  return descendingOrder;
}

void main() {
  group('Fixed tests', () {
    test("Testing for 0", () {
      expect(descendingOrder(0), equals(0));
    });
    test("Testing for 1", () {
      expect(descendingOrder(1), equals(1));
    });
    test("Testing for 111", () {
      expect(descendingOrder(111), equals(111));
    });
    test("Testing for 15", () {
      expect(descendingOrder(15), equals(51));
    });
    test("Testing for 1021", () {
      expect(descendingOrder(1021), equals(2110));
    });
    test("Testing for 123456789", () {
      expect(descendingOrder(123456789), equals(987654321));
    });
  });
}