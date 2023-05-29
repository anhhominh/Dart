import "package:test/test.dart";

BigInt min(BigInt a, BigInt b) => a > b ? b : a;

BigInt countCheckerboard(BigInt width, BigInt height, BigInt resolution) {
  BigInt size = resolution * BigInt.two; //5*2 = 10
  BigInt sw = ((width ~/ size) * resolution) + min(width % size, resolution); //11~/10 = 1 * 5 = 5 + (1, 5) = 6
  BigInt sh = ((height ~/ size) * resolution) + min(height % size, resolution); //0*5 = 0 + (6, 5) = 5
  BigInt answer = sw * (height - sh) + sh * (width - sw); //(6 * 1) + (5 * 5) = 6 + 25 = 31
  return answer;
}

void main() {
  void testing(BigInt w, BigInt h, BigInt r, BigInt exp) =>
      expect(countCheckerboard(w, h, r), equals(exp));
  group("Example tests", () {
    test("Small examples", () {
      // From the description
      testing(BigInt.from(11), BigInt.from(6), BigInt.from(1), BigInt.from(33));
      testing(BigInt.from(11), BigInt.from(6), BigInt.from(2), BigInt.from(32));
      testing(BigInt.from(11), BigInt.from(6), BigInt.from(5), BigInt.from(31));

      // More basic examples
      testing(BigInt.from(9), BigInt.from(5), BigInt.from(2), BigInt.from(22));
      testing(BigInt.from(9), BigInt.from(5), BigInt.from(4), BigInt.from(21));
      testing(BigInt.from(9), BigInt.from(5), BigInt.from(8), BigInt.from(5));
    });
    test("Larger examples", () {
      testing(BigInt.from(123456), BigInt.from(7654321), BigInt.from(333),
          BigInt.from(472485924597));
      testing(BigInt.from(10).pow(10), BigInt.from(10), BigInt.from(20),
          BigInt.from(50000000000));
      testing(BigInt.from(10).pow(10), BigInt.from(11), BigInt.from(21),
          BigInt.from(54999999978));
      testing(BigInt.from(8).pow(5), BigInt.from(7).pow(9), BigInt.from(124),
          BigInt.from(661153496464));
    });
    test("Some edge cases?", () {
      testing(BigInt.from(0), BigInt.from(123), BigInt.from(1), BigInt.from(0));
      testing(BigInt.from(445), BigInt.from(998), BigInt.from(101010),
          BigInt.from(0));
      testing(BigInt.from(0), BigInt.from(0), BigInt.from(1), BigInt.from(0));
    });
  });
}