import "package:test/test.dart";

String decode(String r) {
  String num = "";
    for(int i = 0 ; i < r.length ; i++){
      if( r.codeUnitAt(i) >= 48 && r.codeUnitAt(i) <= 57){
        num = num + r[i];
      }
    }
  List<String> answer = [];
  String str = r.replaceAll(num,"");
  int number = int.parse(num);
  for(int j = 0 ; j < str.length ; j++){
      for(int i = 0 ; i < 26 ; i++){
        if ( i * number % 26 == str.codeUnitAt(j) - 97){
          answer.add(String.fromCharCode(97+i));
        }
    }
  }

    return answer.length == 0 || answer.length != str.length ? "Impossible to decode" : answer.join("");
}

void main() {
  dotest(String r, exp) {
    test("Testing for $r", () =>
      expect(decode(r), equals(exp)));
  }
  group("fixed tests", () {
    dotest("1273409kuqhkoynvvknsdwljantzkpnmfgf", "uogbucwnddunktsjfanzlurnyxmx");
    dotest("1544749cdcizljymhdmvvypyjamowl", "mfmwhbpoudfujjozopaugcb");
    dotest("1122305vvkhrrcsyfkvejxjfvafzwpsdqgp", "rrsxppowmjsrclfljrajtybwviqb");
    dotest("7235897srigyvazffyrtxizwgpmvpts", "qfkoexapddefbtkpiojcxjbq");
    dotest("673334wauamqaamqkuusqegeqmi", "Impossible to decode");
    
  });
}
