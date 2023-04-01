import "package:test/test.dart";
import "dart:math"; 
int check(int a){
  if(a==0 || a==1) return 0;
  for(int i = 2 ; i <= sqrt(a) ; i++ ){
    if(a % i ==0 ) return 0;
  }
  return 1;
}
List<int> step(int g, int start, int end) {
    List<int> numbers = [];
    List<int> result = [];
    for(int i = start ; i <= end ; i++){
      if(check(i)==1) numbers.add(i);
    }
    for(int i = 0 ; i < numbers.length - 1; i++){
      for(int j = i + 1 ; j < numbers.length ; j++)
      if(numbers[j] - numbers[i] == g){
          result.add(numbers[i]);
          result.add(numbers[j]);
          break;
      }
      if(result.length == 2) break;
    }
    // if(check(numbers[0]+g)==1) numbers.add(numbers[0]+g);
    return result;
}

void main() {
  testing(int g, int start, int limit, List<int> exp) => 
    test("Testing for $g $start $limit", () => 
      expect(step(g, start, limit), equals(exp)));
  
  group("fixed tests", () {
    testing(2,100,110, [101, 103]);
    testing(4,100,110, [103, 107]);
    testing(6,100,110, [101, 107]);
    testing(8,300,400, [359, 367]);
    testing(11,30000,100000, []);

  });
}