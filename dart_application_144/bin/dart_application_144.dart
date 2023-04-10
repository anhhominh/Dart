import "package:test/test.dart";
bool solve(String s) {
  List<String> str = s.split('');
  str.sort();
  var setStr = str.toSet();
  if(str.length > setStr.length) return false;
  for(int i = 0 ; i < str.length; i++){
    for(int j = 0 ; j < str.length - 1; j++){
      if(str[j].codeUnitAt(0) >= 97 && str[j].codeUnitAt(0) <= 122){
        int tmp = str[j+1].codeUnitAt(0) - str[j].codeUnitAt(0);
        print(tmp);
        if(tmp > 1 ) return false; 
      }
    }
  }
  return true;
}

void main() {
  group("Basic tests", () {
    test("testing for 'abc'", () => expect(solve('abc'), equals(true)));
    test("testing for 'abd'", () => expect(solve('abd'), equals(false)));
    test("testing for 'dabc'", () => expect(solve('dabc'), equals(true)));
    test("testing for 'abbc'", () => expect(solve('abbc'), equals(false)));
  });
}