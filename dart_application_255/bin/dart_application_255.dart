import "package:test/test.dart";

String countSheep(numb) {
  String ans = '';
  if(numb == 0) return "";
  for(int i = 0; i < numb; i++){
    ans = ans + "${i+1} sheep...";
  }
  return ans;
}

void main() {
  group("Fixed tests", () {
    test("Testing for 0", () => expect(countSheep(0), equals("")));
    test("Testing for 1", () => expect(countSheep(1), equals("1 sheep...")));
    test("Testing for 2", () => expect(countSheep(2), equals("1 sheep...2 sheep...")));
    test("Testing for 3", () => expect(countSheep(3), equals("1 sheep...2 sheep...3 sheep...")));
  });
}