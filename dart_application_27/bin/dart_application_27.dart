import "package:test/test.dart";
import "dart:core";
/*
Return the number (count) of vowels in the given string.
We will consider a, e, i, o, u as vowels for this Kata (but not y).
The input string will only consist of lower case letters and/or spaces.
*/
int getCount(String inputStr){
  String vowels = 'aeiou';
  int dem = 0;
  for(int i = 0 ; i < inputStr.length ; i++){
    for(int j = 0 ; j < vowels.length ; j++){
      if(inputStr.codeUnitAt(i) == vowels.codeUnitAt(j))dem++;
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
