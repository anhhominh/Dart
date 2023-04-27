
import "package:test/test.dart";

triangular(n) {
  if(n<=0) return 0;
  int sum = 0;
  for(int i = 1 ; i <= n ; i++){
    sum = sum + i;
  }
  return sum;
}

void main() {
  test('Basic tests', () {
    expect(triangular(2), equals(3));
    expect(triangular(4), equals(10));
    expect(triangular(9), equals(45));
    expect(triangular(-9), equals(0));
  });
}