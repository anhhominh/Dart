import "package:test/test.dart";

int duplicateCount(String text){
  var str = text.toUpperCase().split('');
  var map = Map();
  str.forEach((element) {
    if(!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });
  int dem = 0;
  var s = str.toSet();
  for(int i = 0 ; i < s.length ; i++){
    if(map['${s.elementAt(i)}'] > 1) dem++;
  }
  return dem;
}

void main() {
  test("add", () {
    expect(duplicateCount(""), equals(0));
    expect(duplicateCount("abcde"), equals(0));
    expect(duplicateCount("aabbcde"), equals(2));
    expect(duplicateCount("aabBcde"), equals(2));
    expect(duplicateCount("Indivisibility"), equals(1));
  });
}
