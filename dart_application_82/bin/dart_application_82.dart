import "package:test/test.dart";

int countSmileys(List<String> arr) {
  bool kt1 = false;
  bool kt2 = false;
  bool kt3 = false;
  int dem = 0;
  arr.forEach((e){
    if(e.length == 2){
      kt2 = true;
      if(e[0] == ":" || e[0] == ";")kt1 = true;
      else kt1 = false;
      if(e[1] == ")" || e[1] == "D") kt3 = true;
      else kt3 = false;
    }
    if(e.length == 3){
      if(e[0] == ":" || e[0] == ";") kt1 = true;
      else kt1 = false;
      if(e[1] == "-" || e[1] == "~") kt2 = true;
      else kt2 = false;
      if(e[2] == ")" || e[2] == "D") kt3 = true;
      else kt3 = false;
    }
    if(e.length > 3) {
      kt1 = false;
      kt3 = false;
      kt2 = false;
    }
    if(kt1 == true && kt2 == true && kt3 == true) dem++;
  });
  return dem;
}

void main() {
  group("Fixed tests", () {
    test("Testing for []", () => expect(countSmileys([]), equals(0)));
    test("Testing for [':)', ';(', ';}', ':-D']", () => expect(countSmileys([':)', ';(', ';}', ':-D']), equals(2)));
    test("Testing for [';]', ':[', ';*', ':\$', ';-D']", () => expect(countSmileys([';]', ':[', ';*', ':\$', ';-D']), equals(1)));
    test("Testing for [':)',':(',':D',':O',':;']", () => expect(countSmileys([':)',':(',':D',':O',':;']), equals(2)));
    test("Testing for [':-)',';~D',':-D',':_D']", () => expect(countSmileys([':-)',';~D',':-D',':_D']), equals(3)));
    test("Testing for [':---)','))',';~~D',';D']", () => expect(countSmileys([':---)','))',';~~D',';D']), equals(1)));
    test("Testing for [';~)',':)',':-)',':--)']", () => expect(countSmileys([';~)',':)',':-)',':--)']), equals(3)));
    test("Testing for [':o)',':--D',';-~)']", () => expect(countSmileys([':o)',':--D',';-~)']), equals(0)));
  });
}