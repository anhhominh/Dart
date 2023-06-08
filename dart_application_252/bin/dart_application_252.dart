import "package:test/test.dart";

int area_or_perimeter(int l, int w) {
  return l == w ? l*w : (l+w)*2;
} 

void main() {
  group("area_or_perimeter", () {
    test('fixed tests', () {
      expect(area_or_perimeter(4, 4), equals(16));
      expect(area_or_perimeter(6, 10), equals(32));
    });
  });
}
