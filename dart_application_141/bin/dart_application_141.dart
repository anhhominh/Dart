import "package:test/test.dart";

List<String> wave(String str) {
  List<String> result = [];
  for(int i = 0 ; i < str.length ;i++){
    for(int j = i ; j < str.length ; j++){
      if(str.codeUnitAt(j)>= 97 && str.codeUnitAt(j)<=122){
        var tmp = str.replaceFirst(RegExp('${str[j]}'),str[j].toUpperCase(),j);
        result.add(tmp);
        
      }
    }
  }
  return result.toSet().toList();
}

void main() {
  group("Fixed tests", () {
    test("Testing for 'a       b    '", () => expect(wave("a       b    "), equals(["A       b    ", "a       B    "])));
    test("Testing for 'this is a few words'", () => expect(wave("this is a few words"), equals(["This is a few words", "tHis is a few words", "thIs is a few words", "thiS is a few words", "this Is a few words", "this iS a few words", "this is A few words", "this is a Few words", "this is a fEw words", "this is a feW words", "this is a few Words", "this is a few wOrds", "this is a few woRds", "this is a few worDs", "this is a few wordS"])));
    test("Testing for ''", () => expect(wave(""), equals([])));
    test("Testing for ' gap '", () => expect(wave(" gap "), equals([" Gap ", " gAp ", " gaP "])));
  });
}
