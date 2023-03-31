import "package:test/test.dart";

String evenOrOdd(String number) {
  List<String> num = number.split('');
  int sumOdd = 0;
  int sumEven = 0;
  for(int i = 0 ; i < num.length ; i++){
    if(int.parse(num[i]) %2 == 0) sumEven = sumEven + int.parse(num[i]);
    if(int.parse(num[i]) %2 != 0) sumOdd = sumOdd + int.parse(num[i]);
  }
  return sumEven == sumOdd ? 'Even and Odd are the same' : sumEven > sumOdd ? 'Even is greater than Odd' : 'Odd is greater than Even';
}

void main() {
  group("Basic tests", () {
    test("testing for '12'", () => expect(evenOrOdd('12'), 'Even is greater than Odd'));
    test("testing for '123'", () => expect(evenOrOdd('123'), 'Odd is greater than Even'));
    test("testing for '112'", () => expect(evenOrOdd('112'), 'Even and Odd are the same'));
  });
}