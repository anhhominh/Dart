import "package:test/test.dart";

int gt(int a){
  int gt = 1;
  for(int i = 1 ; i <=a ; i++){
    gt = gt * i;
  }
  return gt;
}
String strong(int n) {  
  int sum = 0;
  List<String> number = n.toString().split('');
  for(int i = 0; i < number.length ; i++){
    sum = sum + gt(int.parse(number[i]));
  }
  return sum == n ? "STRONG!!!!" : "Not Strong !!";
}

void main() {
  group("Fixed tests", () {
    test("Testing for 1", () {
      expect(strong(1), equals("STRONG!!!!"));
    });
    test("Testing for 2", () {
      expect(strong(2), equals("STRONG!!!!"));
    });
    test("Testing for 145", () {
      expect(strong(145), equals("STRONG!!!!"));
    });
    test("Testing for 7", () {
      expect(strong(7), equals("Not Strong !!"));
    });
    test("Testing for 93", () {
      expect(strong(93), equals("Not Strong !!"));
    });
    test("Testing for 185", () {
      expect(strong(185), equals("Not Strong !!"));
    });
  });
}
