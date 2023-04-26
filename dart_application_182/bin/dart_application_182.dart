import "package:test/test.dart";

int testit(int a, int b) => a | b;

void main() {
  group('basic tests', () {
    // a + b?
    test('testit(0, 1)', () => expect(testit(0, 1), equals(1)));
    test('testit(1, 2)', () => expect(testit(1, 2), equals(3)));
    test('testit(10, 20)', () => expect(testit(10, 20), equals(30)));
    
    // a * b?
    test('testit(1, 1)', () => expect(testit(1, 1), equals(1)));
    test('testit(1, 3)', () => expect(testit(1, 3), equals(3)));
  });
}
