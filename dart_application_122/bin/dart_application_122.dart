import "package:test/test.dart";
import "dart:math";

int overTheRoad(int address, int n) {
  int count = 2*n+1;
  return count-address;
}
void main() {
  test("Basic Test Cases", () {
    expect(overTheRoad(1, 3), equals(6));
    expect(overTheRoad(3, 3), equals(4));
    expect(overTheRoad(2, 3), equals(5));
    expect(overTheRoad(3, 5), equals(8));
    expect(overTheRoad(7, 11), equals(16));
  });
}