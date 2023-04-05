import "package:test/test.dart";
import "dart:core";

int getCount(String inputStr){
  List<String> s = ['a', 'e', 'i', 'o', 'u'];
  List<String> str = inputStr.split('');
  int dem = 0;
  for(int i = 0 ; i < str.length ; i++){
    for(int  j = 0 ; j < s.length ; j++){
      if(str[i] == s[j]) dem++;
    }
  }
  return dem;
}

void main() {
  test("Sample tests", () {
    expect(getCount("bcdfghjklmnpqrstvwxy"), equals(0));
    expect(getCount("abcde"), equals(2));
    expect(getCount("aeiou"), equals(5));
    expect(getCount("abracadabra"), equals(5));
  });
}
