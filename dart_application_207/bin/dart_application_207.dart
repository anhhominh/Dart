import "package:test/test.dart";

int seatsInTheater(int nCols, int nRows, int col, int row) {
  return (nCols-col + 1) * (nRows - row);
}

void main() {
  void testing(int a, int b, int c, int d, int e) => test("seatsInTheater($a, $b, $c, $d)", () => expect(seatsInTheater(a, b, c, d), equals(e)));
  group("Basic tests", () {
    testing(16, 11, 5, 3, 96);
    testing(1, 1, 1, 1, 0);
    testing(13, 6, 8, 3, 18);
    testing(60, 100, 60, 1, 99);
    testing(1000, 1000, 1000, 1000, 0);
  });
}