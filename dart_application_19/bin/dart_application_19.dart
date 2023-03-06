import "package:test/test.dart";
/*
Count the number of divisors of a positive integer n.
Random tests go up to n = 500000.
*/
int divisors(n) {
  dynamic dem = 0;
  for(int i=1;i<=n;i++){
    if(n%i==0)dem++;
  }
  return dem;
}

void main() {
  group('Basic tests', () {
    test("Testing for 1", () => expect(divisors(1), equals(1)));
    test("Testing for 10", () => expect(divisors(10), equals(4)));
    test("Testing for 11", () => expect(divisors(11), equals(2)));
    test("Testing for 54", () => expect(divisors(54), equals(8)));
    test("Testing for 64", () => expect(divisors(64), equals(7)));
  });
}