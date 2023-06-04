import 'dart:math';
import 'dart:math' as math;
import "package:test/test.dart";

String dec2FactString(int nb) {
    String convert = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    int f = 1;
    int n = 2;
    while (f < nb){
         if (n * f < nb){
            f *= n;
            n += 1;
         }
        else{
          n -= 1;
          break;
        }     
    }
     
   String res = '';
    while (n > 0){
      res += convert[nb ~/ f];
      nb %= f;
      f ~/= n;
      n -= 1;
    }  
    return res + '0';
}
int factString2Dec(String str) {
   String convert = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   String tmp = str.split('').reversed.join();
   int s = 0;
   int f = 1;
    for (int i = 1 ; i < tmp.length ; i++){
        f *= i;
        s += f * convert.indexOf(tmp[i]);
    }
    return s;
}



void main() {
  testing1(int n, String exp) {
    test("Testing dec2FactString for: $n", () =>
      expect(dec2FactString(n), equals(exp)));
  }
  testing2(String n, int exp) {
      test("Testing factString2Dec for: $n", () =>
        expect(factString2Dec(n), equals(exp)));
  }
  group("fixed tests dec2FactString", () {
    testing1(36288000, "A0000000000");
    testing1(2982, "4041000");
    testing1(463, "341010");
  });
  group("fixed tests factString2Dec", () {
    testing2("4042100", 2990);
    testing2("65341010", 34303);
    testing2("27A0533231100", 1273928000);
    
  });
}

