import "package:test/test.dart";

int solution(String digits) {
  int answer = 0;
  String number = "";
  for (int i=0; i<digits.length; i++){
    if(i+5<=digits.length)number = digits.substring(i, i + 5); 
    if(int.parse(number) > answer){      
      answer = int.parse(number);
    }
  }
  return answer;
}

void main() {
  test('Returns non-zero', () {
    expect(solution('543432345323542323577678'), isNonZero);
  });
  
  test('Returns correct in overlapping tests', () {
      expect(solution('731674765'), equals(74765));
  });
} 
