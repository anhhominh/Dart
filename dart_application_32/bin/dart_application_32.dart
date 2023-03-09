import 'package:dart_application_32/dart_application_32.dart' as dart_application_32;

//Given an integral number, determine if it's a square number:
import "dart:math" as Math;
import "package:test/test.dart";
import 'dart:math';

isSquare(n) { 
  return sqrt(n)*sqrt(n) == n ? true : false; 
}


void main() {
  test('should work for some examples', () {
    expect(isSquare(-1), isFalse);
    expect(isSquare(0), isTrue);
    expect(isSquare(3), isFalse);
    expect(isSquare(4), isTrue);
    expect(isSquare(25), isTrue);
    expect(isSquare(26), isFalse);
  });

  test('should work for random square numbers', () {
    var r = new Math.Random();
    new List.generate(100,(i) => i).forEach((n) {
      var x = r.nextInt(65520);
      expect(isSquare(x*x), isTrue);
    });
  });
}
