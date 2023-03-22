import "package:test/test.dart";

int cycle(int n) {
  if(n%2 == 0 || n%5 == 0) return -1;
  var res = 10%n , c = 1;
  while(res != 1){
    res = res*10%n;
    c++;
  }
    return c;
}

void main() {
  dotest(int n, int exp) => 
    test("Testing for $n", () => 
      expect(cycle(n), equals(exp)));
  
  group("fixed tests", () {
    dotest(3, 1);
    dotest(33, 2);
    dotest(18118, -1);
    dotest(69, 22);
    dotest(197, 98);

  });
}