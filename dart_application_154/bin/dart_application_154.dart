import "package:test/test.dart";
import "dart:math";
int nto(int n){
  if( n==0 || n==1 ) return 0;
  for(int  i = 2 ; i <= sqrt(n) ; i++){
    if(n%i == 0) return 0;
  }
  return 1;
}
List<int> gap(int g, int m, int n) {
  int  start = 0;
  int  end = 0;
    for (int i = m ; i < n+1 ;i++ ){
      if (nto(i)==1)
        // print i
        if (start == 0)start = i;
        else if (end == 0)end = i;
        else{
          start = end;
          end = i;
        }

      if (end - start == g)  return [start, end];
    }
  return [];
  //// giải pháp khác
  // int k = 0;
  // for (int i = m; i <= n; i++) {
  //   if (isPrime(i)) {
  //     if (i - k == g) 
  //       return [k, i];
  //     k = i;
  //   }
  // }
  // return [];
}   

void main() {
  testing(int g, int start, int limit, List<int> exp) => 
    test("Testing for $g $start $limit", () => 
      expect(gap(g, start, limit), equals(exp)));
  
  group("fixed tests", () {
    testing(2,100,110, [101, 103]);
    testing(2,101,103, [101, 103]);
    testing(4,100,110, [103, 107]);
    testing(6,100,110, []);
    testing(8,300,400, [359, 367]);
    testing(10,300,400, [337, 347]);
  });
}