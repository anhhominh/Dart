import "package:test/test.dart";
import "dart:math";

int lateRide(int n) {
  int hour = (n/60).floor();
  int minute = n - hour * 60;
  int sum = 0;
  List h = hour.toString().split("");
  List m = minute.toString().split("");
  for(int i = 0 ; i < h.length ; i++){
    sum = sum + int.parse(h[i]);
  }
  for(int j = 0 ; j < m.length ; j++){
    sum = sum + int.parse(m[j]);
  }
  return sum;
}

void main() {
  group('Basic tests', () {
    test("Testing for 240", () => expect(lateRide(240), equals(4)));
    test("Testing for 808", () => expect(lateRide(808), equals(14)));
    test("Testing for 1439", () => expect(lateRide(1439), equals(19)));
    test("Testing for 0", () => expect(lateRide(0), equals(0)));
    test("Testing for 23", () => expect(lateRide(23), equals(5)));
    test("Testing for 8", () => expect(lateRide(8), equals(8)));
  });
}