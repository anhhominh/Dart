import "package:test/test.dart";

int quadrant(int x, int y) {
  int result = 0;
  if(x > 0 && y > 0) result = 1;
  if(x < 0 && y > 0) result = 2;
  if(x < 0 && y < 0) result = 3;
  if(x > 0 && y < 0) result = 4;
  return result;
}

void main() {
  group("Basic Tests", () {
    
    test("Basic Tests", () {
      
      List<List<int>> tests = [[1, 2, 1], [3, 5, 1], [-10, 100, 2], [-1, -9, 3], [19, -56, 4], [1, 1, 1], [-60, -12, 3]];
      
      for (List<int> testValues in tests) {
        int x = testValues[0];
        int y = testValues[1];
        int expected = testValues[2];
        
        expect(quadrant(x, y), equals(expected), reason: "x = $x, y = $y");
      }
    });
  });
}
