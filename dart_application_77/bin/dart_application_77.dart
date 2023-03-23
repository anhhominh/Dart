import "package:test/test.dart";
import "dart:math";
int sumCubes(int n) {
  dynamic sum = 0;
  for(dynamic i = 1 ; i <= n ; i++){
    sum = sum + pow(i,3);
  }
  return sum;
}

void main() {
  group('Fixed tests', () {
    test('Testing for 1', () => expect(sumCubes(1), equals(1)));
    test('Testing for 2', () => expect(sumCubes(2), equals(9)));
    test('Testing for 3', () => expect(sumCubes(3), equals(36)));
    test('Testing for 4', () => expect(sumCubes(4), equals(100)));
    test('Testing for 10', () => expect(sumCubes(10), equals(3025)));
    test('Testing for 123', () => expect(sumCubes(123), equals(58155876)));
    test('Testing for 77000', () => expect(sumCubes(77000), equals(8788488517982250000)));
  });
}