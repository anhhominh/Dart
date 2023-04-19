import "package:test/test.dart";

int solve(String s) {
  String str = "aeiou";
  for(int i = 0 ; i < s.length ; i++){
    for(int  j = 0 ; j < str.length ; j++){
      if(s.codeUnitAt(i) == str.codeUnitAt(j)){
        var newS = s.replaceAll(s[i],' ');
        s = newS;  
        
      }
    }
  }
  List<String> value = s.split(' ');
  int max = 0;
  for(int i = 0 ; i < value.length ; i++){
    int sum = 0;
    for(int j = 0 ; j < value[i].length ; j++){
      if(value[i].codeUnitAt(j) >= 97 && value[i].codeUnitAt(j) <= 122){
        sum = sum + value[i].codeUnitAt(j) - 96;
      }
    }
    if(sum > max ) max = sum;
  }
  return max;
}

void main() {
  group("Fixed tests", () {
    test("Testing for zodiac", () => expect(solve("zodiac"), equals(26)));
    test("Testing for chruschtschov", () => expect(solve("chruschtschov"), equals(80)));
    test("Testing for khrushchev", () => expect(solve("khrushchev"), equals(38)));
    test("Testing for strength", () => expect(solve("strength"), equals(57)));
    test("Testing for catchphrase", () => expect(solve("catchphrase"), equals(73)));
    test("Testing for twelfthstreet", () => expect(solve("twelfthstreet"), equals(103)));
    test("Testing for mischtschenkoana", () => expect(solve("mischtschenkoana"), equals(80)));
    test("Testing for az", () => expect(solve("az"), equals(26)));
  });
}