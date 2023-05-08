import "package:test/test.dart";
int doubleInteger(int i) {
  return i*2;
}

void main() {
  group("Basic Tests", () {
    
    test("Basic Tests", () {
      List<List<int>> tests = [[2, 4], [4, 8], [-10, -20], [0, 0], [100, 200]];
      
      for (List<int> testValues in tests) {
        int i = testValues[0];
        int expected = testValues[1];
        
        expect(doubleInteger(i), equals(expected), reason: "i = $i");
      }
    });
  });
}