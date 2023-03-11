//Jumping number is the number that All adjacent digits in it differ by 1.
import "package:test/test.dart";
import "dart:math";
String jumpingNumber(int n) {
  if(n>0 && n <10) return "Jumping!!";
  String number = n.toString();
  for(int i = 0 ; i < number.length - 1 ; i++){
    if((number.codeUnitAt(i) - number.codeUnitAt(i + 1)).abs() != 1) return "Not!!";
  } 
  return "Jumping!!";
}

void main() {
  group("Fixed tests", () {
    test("Testing for 1", () {
      expect(jumpingNumber(1), equals("Jumping!!"));
    });
    test("Testing for 7", () {
      expect(jumpingNumber(7), equals("Jumping!!"));
    });
    test("Testing for 9", () {
      expect(jumpingNumber(9), equals("Jumping!!"));
    });
    test("Testing for 23", () {
      expect(jumpingNumber(23), equals("Jumping!!"));
    });
    test("Testing for 32", () {
      expect(jumpingNumber(32), equals("Jumping!!"));
    });
    test("Testing for 79", () {
      expect(jumpingNumber(79), equals("Not!!"));
    });
    test("Testing for 98", () {
      expect(jumpingNumber(98), equals("Jumping!!"));
    });
    test("Testing for 8987", () {
      expect(jumpingNumber(8987), equals("Jumping!!"));
    });
    test("Testing for 4343456", () {
      expect(jumpingNumber(4343456), equals("Jumping!!"));
    });
    test("Testing for 98789876", () {
      expect(jumpingNumber(98789876), equals("Jumping!!"));
    });
  });
}