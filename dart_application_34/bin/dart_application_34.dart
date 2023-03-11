/*
Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.
Square all numbers k (0 <= k <= n) between 0 and n.
Count the numbers of digits d used in the writing of all the k**2.
Implement the function taking n and d as parameters and returning this count.
*/

import "package:test/test.dart";
import "dart:math";

int nbDig(int n, int d) {
  int dem = 0;
  List<int> number = [];
  for ( int i = 0 ; i <= n ; i++ ){
      number.add(i*i);
  }
  number.forEach((e){
  String numAsString = e.toString();
  for (int i = 0; i < numAsString.length; i++) {
    if(int.parse(numAsString[i]) == d ) dem++;
  }
  });
  return dem;
}

void main() {
  void dotest(int n, int d, int exp) {
    test("nbDig($n, $d)", () => expect(nbDig(n, d), equals(exp)));
  } 
  group("fixed tests", () {
    dotest(5750, 0, 4700);
    dotest(11011, 2, 9481);
    dotest(12224, 8, 7733);
    dotest(11549, 1, 11905);
    dotest(14550, 7, 8014);
       
  });
}