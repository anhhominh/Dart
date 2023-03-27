import "package:test/test.dart";

List<String> capitalize(String x) {
  List<String> s = x.split('');
  List<String> cap = [];
  String tmp1 = "";
  String tmp2 = "";
  for(int i = 0 ; i < s.length ; i++){
    if(i%2==0){
      s[i] = s[i].toUpperCase();
    }
    tmp1 = tmp1 + s[i];
  } 
  cap.add(tmp1);
  for(int i = 0 ; i < s.length ; i++){
    if(i%2==0){
      s[i] = s[i].toLowerCase();
    }
    if(i%2!=0){
      s[i] = s[i].toUpperCase();
    }
    tmp2 = tmp2 + s[i];
  }
  cap.add(tmp2);
  return cap;
}

void main() {
  group("Fixed tests", () {
    test("Testing for abcdef", () => expect(capitalize("abcdef"), equals(['AbCdEf', 'aBcDeF'])));
    test("Testing for codewars", () => expect(capitalize("codewars"), equals(['CoDeWaRs', 'cOdEwArS'])));
    test("Testing for abracadabra", () => expect(capitalize("abracadabra"), equals(['AbRaCaDaBrA', 'aBrAcAdAbRa'])));
    test("Testing for codewarriors", () => expect(capitalize("codewarriors"), equals(['CoDeWaRrIoRs', 'cOdEwArRiOrS'])));
    test("Testing for indexinglessons", () => expect(capitalize("indexinglessons"), equals(['InDeXiNgLeSsOnS', 'iNdExInGlEsSoNs'])));
    test("Testing for codingisafunactivity", () => expect(capitalize("codingisafunactivity"), equals(['CoDiNgIsAfUnAcTiViTy', 'cOdInGiSaFuNaCtIvItY'])));
  });
}
