import "package:test/test.dart";
import 'dart:math';
/*
A balanced number is a number where the sum of digits to the left of the middle digit(s) 
and the sum of digits to the right of the middle digit(s) are equal.
If the number has an odd number of digits, then there is only one middle digit. 
(For example, 92645 has one middle digit, 6.) 
Otherwise, there are two middle digits. (For example, the middle digits of 1301 are 3 and 0.)
The middle digit(s) should not be considered when determining whether a number is balanced or not, 
e.g. 413023 is a balanced number because the left sum and right sum are both 5.
*/

String balancedNum(int numb) {
  List<int> number = [];
  String check = "";
  int sum1 = 0, sum2 = 0;
  if(numb>=0 && numb < 100) check = "Balanced";
  else {
    while(numb>0){
      int tmp = numb % 10;
      number.add(tmp);
      numb= (numb / 10).toInt();
    }
    if(number.length % 2 == 0 ){
      for(int i = 0 ; i < number.length/2 - 1 ; i++) sum1 = sum1 + number[i];
      for(int i = number.length -  1; i > number.length/2 ; i--) sum2 = sum2 + number[i];
      sum1 == sum2 ? check = "Balanced" : check = "Not Balanced";
    } else {
      for(int i = 0 ; i < (number.length/2).toInt() ; i++) sum1 = sum1 + number[i];
      for(int i = (number.length/2).toInt() + 1; i < number.length ; i++) sum2 = sum2 + number[i];
      sum1 == sum2 ? check = "Balanced" : check = "Not Balanced";

    }
  }
  return check;
}

void main() {
  group("Check balanced number", () {
    test("Testing for 7", () {
      expect(balancedNum(7), equals("Balanced"));
    });
    test("Testing for 959", () {
      expect(balancedNum(959), equals("Balanced"));
    });
    test("Testing for 13", () {
      expect(balancedNum(13), equals("Balanced"));
    });
    test("Testing for 432", () {
      expect(balancedNum(432), equals("Not Balanced"));
    });
    test("Testing for 424", () {
      expect(balancedNum(424), equals("Balanced"));
    });
  });
  group("Check Larger number", () {
    test("Testing for 1024", () {
      expect(balancedNum(1024), equals("Not Balanced"));
    });
    test("Testing for 66545", () {
      expect(balancedNum(66545), equals("Not Balanced"));
    });
    test("Testing for 295591", () {
      expect(balancedNum(295591), equals("Not Balanced"));
    });
    test("Testing for 1230987", () {
      expect(balancedNum(1230987), equals("Not Balanced"));
    });
    test("Testing for 56239814", () {
      expect(balancedNum(56239814), equals("Balanced"));
    });
  });
}
