import "package:test/test.dart";

String rot(String strng) {
  List<String> result = [];
  List<String> str = strng.split('\n');
  for(int i = str.length - 1 ; i >= 0 ; i--){
    var chars = str[i].split('');
    String s = chars.reversed.join();
    result.add(s);
  }
  print(result);
    // your code
  return result.join('\n');
}
String selfieAndRot(String strng) {

    List<String> result = [];
    List<String> str1 = strng.split('\n');
    String c = "";
    for(int i = 0 ; i < str1[0].length ; i++){
      c = c + ".";
    }
    for(int i = 0 ; i < str1.length ; i++){
      str1[i] = str1[i] + c;
      result.add(str1[i]);
    }
    String s = rot(strng);
    List<String> str2 = s.split('\n');
    for(int i = 0 ; i < str2.length ; i++){
      str2[i] = c + str2[i];
      result.add(str2[i]);
    }
    return result.join("\n");
}
String oper(String fct(String str), String s) {
    // your code
    return fct(s);
}

void main() {
  dotest1(String s, exp) {
    test("Testing rot for: \n$s \n", () =>
      expect(oper(rot, s), equals(exp)));
  }
  dotest2(String s, exp) {
      test("Testing selfieAndRot for: \n$s \n", () =>
        expect(oper(selfieAndRot, s), equals(exp)));
  }
  group("fixed tests rot", () {
    dotest1("fijuoo\nCqYVct\nDrPmMJ\nerfpBA\nkWjFUG\nCVUfyL", 
        "LyfUVC\nGUFjWk\nABpfre\nJMmPrD\ntcVYqC\nooujif");
    dotest1("rkKv\ncofM\nzXkh\nflCB", "BClf\nhkXz\nMfoc\nvKkr");
    dotest1("lVHt\nJVhv\nCSbg\nyeCt", "tCey\ngbSC\nvhVJ\ntHVl");
    dotest1("QMxo\ntmFe\nWLUG\nowoq", "qowo\nGULW\neFmt\noxMQ");
    
  });
  group("fixed tests selfieAndRot", () {
    dotest2("xZBV\njsbS\nJcpN\nfVnP", 
        "xZBV....\njsbS....\nJcpN....\nfVnP....\n....PnVf\n....NpcJ\n....Sbsj\n....VBZx");
    dotest2("uLcq\nJkuL\nYirX\nnwMB",
        "uLcq....\nJkuL....\nYirX....\nnwMB....\n....BMwn\n....XriY\n....LukJ\n....qcLu");
    dotest2("lVHt\nJVhv\nCSbg\nyeCt",
        "lVHt....\nJVhv....\nCSbg....\nyeCt....\n....tCey\n....gbSC\n....vhVJ\n....tHVl");
    dotest2("QMxo\ntmFe\nWLUG\nowoq",
        "QMxo....\ntmFe....\nWLUG....\nowoq....\n....qowo\n....GULW\n....eFmt\n....oxMQ");

  });
}