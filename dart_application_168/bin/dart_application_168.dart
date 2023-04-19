import "package:test/test.dart";
import "dart:math";
int c(int k) {
  var n = sqrt(k), res = 1;
  if (n.floor() != n) return 0; 
  for (var i = 2; i <= n; i++) {
    if (n % i != 0) continue;
    int count = 0;
    while (n % i == 0) {
        n = n / i;
        count++;
    }
    res *= ((count-1) * 3) + 4;
  }            
  return res;
}

void main() {
  void testing(int n, int exp) => test("Testing for $n", () => expect(c(n), equals(exp)));
  group("Basic tests c -1-", () {
    testing(423128, 0);
    testing(1369, 4);
    testing(2999824, 28);
    testing(11710084, 64);
  });
}