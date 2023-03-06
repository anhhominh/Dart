import "package:test/test.dart";
/*
You are given the length and width of a 4-sided polygon. 
The polygon can either be a rectangle or a square.
If it is a square, return its area. If it is a rectangle, return its perimeter.
*/
int area_or_perimeter(int l, int w) {
  if(l == w) return l*w;
  return (l+w)*2;
}

void main() {
  group("area_or_perimeter", () {
    test('fixed tests', () {
      expect(area_or_perimeter(4, 4), equals(16));
      expect(area_or_perimeter(6, 10), equals(32));
    });
  });
}