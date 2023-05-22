import "package:test/test.dart";

int multiply(int a, int b){
  return a * b;
}

// Add your own tests here.
// See https://pub.dartlang.org/packages/test
void main() {
  test('Multiply should return the product', () {
    expect(multiply(1,1), equals(1));
  });
}