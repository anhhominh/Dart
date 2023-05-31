import "package:test/test.dart";
import "dart:math";
int dem1(String bin){
  int dem = 0;
  String num = bin.toString();
  for(int i = 0 ; i < num.length ; i++){
      if(num[i] == '1'){
        dem++;
      }
}
  return dem;
}
int nextHigher(int n) {
  var bin = n.toRadixString(2);
  int dem_1 = dem1(bin);
  int max = n * 2 + 1;
  while(n < max){
    n += 1;
    var bin_2 = n.toRadixString(2);
    int dem_2 = dem1(bin_2);
    if(dem_1 == dem_2){
      return n;
    }
  }
  return 0;
}

void main() {
  group("basic tests", () {
    test("Testing for 128", () => expect(nextHigher(128), equals(256)));
    test("Testing for 1", () => expect(nextHigher(1), equals(2)));
    test("Testing for 1022", () => expect(nextHigher(1022), equals(1279)));
    test("Testing for 127", () => expect(nextHigher(127), equals(191)));
    test("Testing for 1253343", () => expect(nextHigher(1253343), equals(1253359)));
  });
}