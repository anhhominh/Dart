import "package:test/test.dart";
import "dart:math";
String disariumNumber(int n) {
  List<String> number = n.toString().split('');
  dynamic sum = 0;
  for(int i = 0 ; i < number.length ; i++){
    sum = sum + pow(int.parse(number[i]),i+1);
  }
  return sum == n ? "Disarium !!" : "Not !!";
}

void main() {
  group("Fixed tests", () {
    test("Testing for 89", () => expect(disariumNumber(89), equals("Disarium !!")));
    test("Testing for 564", () => expect(disariumNumber(564), equals("Not !!")));
    test("Testing for 1024", () => expect(disariumNumber(1024), equals("Not !!")));
    test("Testing for 135", () => expect(disariumNumber(135), equals("Disarium !!")));
    test("Testing for 136586", () => expect(disariumNumber(136586), equals("Not !!")));
  });
}
