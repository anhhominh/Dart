import 'dart:math' as math;
import "package:test/test.dart";
import "dart:math";

prime_factors(n){
    int i = 2;
    List<int> factors = [];
    if (n < 0){
       n *= -1;
    }
    while (i * i <= n){
        if (n % i != 0){
          i += 1;
        }   
        else{
           n = (n/i).floor();
           factors.add(i);
        }    
    }
    if (n > 1){
      factors.add(n);
    }
        
    return factors;
}


combine(arr1, arr2){
  for(var a in arr1){
    if (arr2.contains(a) == false){
         arr2.add(a);
    }     
  }   
    return arr2;
}
    


String sumOfDivided(List<int> l) {
    List<int> factors = [];
    List<List<int>> sums = [];
    for(int i = 0 ; i < l.length ; i++){
      combine(prime_factors(l[i]),factors);
    }   
    print(factors);
    for(int i = 0 ; i < factors.length ; i++){
      int msum = 0;
        for (int j = 0 ; j < l.length ; j++){
            if(l[j]%factors[i] == 0){
               msum += l[j];
            }   
        } sums.add([factors[i], msum]);
    }
        
    sums.sort((a, b) => a[0].compareTo(b[0]));
    print(sums.join('').replaceAll('[','(').replaceAll(']',')').replaceAll(',',''));
    return sums.join('').replaceAll('[','(').replaceAll(']',')').replaceAll(',','');
}

void main() {
  dotest(List<int> l, String exp) {
    test("Testing for $l", () =>
      expect(sumOfDivided(l), equals(exp)));
  }
  
  group("fixed tests", () {
    dotest([12, 15], "(2 12)(3 27)(5 15)");
    dotest([15,21,24,30,45], "(2 54)(3 135)(5 90)(7 21)");
    dotest([15,21,24,30,-45], "(2 54)(3 45)(5 0)(7 21)");
    dotest([107, 158, 204, 100, 118, 123, 126, 110, 116, 100],
        "(2 1032)(3 453)(5 310)(7 126)(11 110)(17 204)(29 116)(41 123)(59 118)(79 158)(107 107)");
    
  });
}