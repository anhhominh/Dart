import 'dart:math' as math;
import "package:test/test.dart";

String diag1Sym(String str) {
  var newStr = str.split('\n');  
  List dia = []; 
  for(int i = 0 ; i < newStr.length ; i++){
    String tmp = "";
    for(int j = 0 ; j < newStr.length ; j++){
      tmp = tmp + newStr[j][i];
    }
    dia.add(tmp);
  }
  return dia.join('\n');
}
String rot90Clock(String str) {
  var a = diag1Sym(str);
  print(a);
  var newStr = diag1Sym(str).split('\n');  
  List rot90 = [];
  for(int i = 0 ; i < newStr.length ; i++){
    var chars = newStr[i].split('');
    var tmp = chars.reversed.join();
    rot90.add(tmp);
  }
  return rot90.join('\n');
}
String selfieAndDiag1(String str) {
  var addStr = diag1Sym(str);
  var add = addStr.split('\n');
  var selfie = str.split('\n');
  List selfieAndDiag1 = [];
  for(int i = 0 ; i < selfie.length ; i++){
    String tmp = selfie[i] + "|" + add[i];
    selfieAndDiag1.add(tmp);
  }
  return selfieAndDiag1.join('\n');
}
String oper(String fct(String str), String s) {
  
  return fct(s);
}

void main() {
  dotest1(String s, exp) {
    test("Testing rot90Clock for: \n$s \n", () =>
      expect(oper(rot90Clock, s), equals(exp)));
  }
  dotest2(String s, exp) {
      test("Testing diag1Sym for: \n$s \n", () =>
        expect(oper(diag1Sym, s), equals(exp)));
  }
  dotest3(String s, exp) {
      test("Testing selfieAndDiag1 for: \n$s \n", () =>
        expect(oper(selfieAndDiag1, s), equals(exp)));
  }
  group("fixed tests rot90Clock", () {
    dotest1("rgavce\nvGcEKl\ndChZVW\nxNWgXR\niJBYDO\nSdmEKb",
        "Sixdvr\ndJNCGg\nmBWhca\nEYgZEv\nKDXVKc\nbORWle");
    dotest1("EFAxSN\nXbJObC\nMrNVyg\nUKqDsE\nrYnAfU\nnNjADZ",
        "nrUMXE\nNYKrbF\njnqNJA\nAADVOx\nDfsybS\nZUEgCN");
    
  });
  group("fixed tests diag1Sym", () {
    dotest2("wuUyPC\neNHWxw\nehifmi\ntBTlFI\nvWNpdv\nIFkGjZ",
        "weetvI\nuNhBWF\nUHiTNk\nyWflpG\nPxmFdj\nCwiIvZ");
    dotest2("qAdPMX\nkRIQKU\nJeoroo\nNwVbtn\nAmQUqi\nVguxub",
        "qkJNAV\nARewmg\ndIoVQu\nPQrbUx\nMKotqu\nXUonib");
    
  });
  group("fixed tests selfieAndDiag1", () {
    dotest3("NJVGhr\nMObsvw\ntPhCtl\nsoEnhi\nrtQRLK\nzjliWg",
        "NJVGhr|NMtsrz\nMObsvw|JOPotj\ntPhCtl|VbhEQl\nsoEnhi|GsCnRi\nrtQRLK|hvthLW\nzjliWg|rwliKg");
    dotest3("JAAn\nsrpa\nFngg\nmrVJ","JAAn|JsFm\nsrpa|Arnr\nFngg|ApgV\nmrVJ|nagJ");
    
  });
}
