import "package:test/test.dart";

String specialNumber(n) {
  List<int> special =  [0, 1, 2, 3, 4, 5];
  String num = n.toString();
  List<String> number = num.split('');
  int dem = 0;
  for(int  i = 0 ; i < number.length ; i++){
    for(int j = 0 ; j < special.length ; j ++){
      if(int.parse(number[i]) == special[j]) dem++;
    }
  }
  return dem == number.length  ?  "Special!!" : "NOT!!";
}

void main() {
  group('Fixed tests', () {
    test('Testing for 2', () {
      expect(specialNumber(2), equals("Special!!"));
    });
    test('Testing for 3', () {
      expect(specialNumber(3), equals("Special!!"));
    });
    test('Testing for 6', () {
      expect(specialNumber(6), equals("NOT!!"));
    });
    test('Testing for 9', () {
      expect(specialNumber(9), equals("NOT!!"));
    });
    test('Testing for 11', () {
      expect(specialNumber(11), equals("Special!!"));
    });
    test('Testing for 55', () {
      expect(specialNumber(55), equals("Special!!"));
    });
    test('Testing for 26', () {
      expect(specialNumber(26), equals("NOT!!"));
    });
    test('Testing for 92', () {
      expect(specialNumber(92), equals("NOT!!"));
    });
    test('Testing for 25432', () {
      expect(specialNumber(25432), equals("Special!!"));
    });
    test('Testing for 2783', () {
      expect(specialNumber(2783), equals("NOT!!"));
    });
  });
}
