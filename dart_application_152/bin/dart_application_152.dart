import "package:test/test.dart";
import "dart:math";
List<List<int>> solEqua(n) {
    List<List<int>> result = [];
    for (int i = 1; i <= (sqrt(n)) + 1; i++){
        if (n % i != 0)continue;
        int j = (n / i).floor();
        int y = ((j - i) / 4).floor();
        int x = i + 2 * y;
        if (x >= 0 && y >= 0 && (j == x + 2 * y) && (i == x - 2 * y))result.add([x, y]);
    }

  //  print(number);
    return result;
}

void main() {
  dotest(int n, List<List<int>> exp) {
    test("Testing for $n", () =>
      expect(solEqua(n), equals(exp)));
  }
  group("fixed tests", () {
    dotest(5, [[3, 1]]);
    dotest(12, [[4, 1]]);
    dotest(9005, [[4503, 2251], [903, 449]]); 
    dotest(9008, [[1128, 562]]);

  });
}
