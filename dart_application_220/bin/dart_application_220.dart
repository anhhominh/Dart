import "package:test/test.dart";
import "dart:math";

int thirt(int n) {
    
    int sum = 0;
    while(true){
      int tmp = 0;
      print(n);
      List<String> num = n.toString().split("");
      print(num);
      for(int i = 0 ; i < num.length ; i++){
       tmp = tmp + int.parse(num[num.length - 1 - i]) * (pow(10,i)%13);
    }
    print(tmp);
      if(sum == tmp){
        break;
        return sum;
      }
      sum = tmp;
      n = tmp;
    }
    
    return sum;
}

void main() {
  testequal(int n, int exp) => 
    test("Testing for $n", () => 
      expect(thirt(n), equals(exp)));
  group("fixed tests", () {
    testequal(8529, 79);
    testequal(85299258, 31);
    testequal(5634, 57);
    
  });
}