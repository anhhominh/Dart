import "package:test/test.dart";
import "dart:math";
int squareSum(List numbers) {
  int sum = 0;
  for(int i = 0 ; i < numbers.length ; i++){
    sum = sum + pow(numbers[i].abs(),2).toInt();
  }
  return sum;
}

void main() {
  test('Basic tests', () {
    expect(squareSum([1,2]), equals(5));
    expect(squareSum([0,3,4,5]), equals(50));
    expect(squareSum([]), equals(0));
    expect(squareSum([-1,-2]), equals(5));
    expect(squareSum([-1,0,1]), equals(2));
  });
}
