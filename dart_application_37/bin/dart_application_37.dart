/*
We want to generate a function that computes the series starting from 0 and ending until the given number.
*/
import "package:test/test.dart";

class SequenceSum{
  static String showSequence(int n)
  {
    List<int> number = [];
    int? sum;
    if(n==0) return "0=0";
    if(n<0) return "$n<0";
    for(int i = 0 ; i <= n ; i++){
      number.add(i);
    //  number.join('+');
      sum = number.reduce((acc,e) => acc + e);
    }
    return  "${number.join('+')} = $sum";
  }
}

void main() {
  test('Basic tests', () {
    expect(SequenceSum.showSequence(0), equals("0=0"));
    expect(SequenceSum.showSequence(6), equals("0+1+2+3+4+5+6 = 21"));
  });
}