import 'dart:math' as math;
import "package:test/test.dart";
int UCLN(int a, int b)
{
    while ( a != b)
    {
        if (a > b)
            a = a - b;
        else
            b = b - a;
    }
    return a; 
}
String fromNb2Str(int n, List<int> bases) {
  int mul = 1;
  String result = "";
  bases.forEach((e){
    mul *= e;
  });
  if(mul < n )return "Not applicable";
  for(int i = 0 ; i < bases.length - 1 ; i++){
    if(UCLN(bases[i],bases[i+1]) != 1) return "Not applicable";
  }
  bases.forEach((e){
    int tmp = n%e;
    result = result + "-${tmp}-";
  });
  return result;
}

void main() {
  dotest(int n, List<int> bases, String exp) {
    test("Testing for: \n$n $bases \n", () =>
      expect(fromNb2Str(n, bases), equals(exp)));
  }
  
  group("fixed tests", () {
    dotest(187, [8,7,5,3], "-3--5--2--1-");
    dotest(446, [8,7,5,3], "-6--5--1--2-");
    dotest(15, [8,6,5], "Not applicable");
    dotest(0, [8,7,5,3], "-0--0--0--0-");
    dotest(3450, [17,5,3], "Not applicable");
  });
}
