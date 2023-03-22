import "package:test/test.dart";
import 'dart:math'; 
bool primorial(int a){ // hàm kiểm tra nguyên tố
  if( a==0 || a==1 ) return false;
  for( int i = 2 ; i <= sqrt(a) ; i++){
      if(a%i == 0) return false;
  }
  return true;
}
int numPrimorial(int n) {
  int k = 2;
  int dem = 0;
  int number = 1;
  while(dem<n){
    if(primorial(k)){
      number = number * k;
      dem++;
    }
    k++;
  }
  return number;
}

void main() {
  group("Basic tests", () {
    test("Testing for 3", () => expect(numPrimorial(3), equals(30)));
    test("Testing for 4", () => expect(numPrimorial(4), equals(210)));
    test("Testing for 5", () => expect(numPrimorial(5), equals(2310)));
    test("Testing for 8", () => expect(numPrimorial(8), equals(9699690)));
    test("Testing for 9", () => expect(numPrimorial(9), equals(223092870)));
  });
}
