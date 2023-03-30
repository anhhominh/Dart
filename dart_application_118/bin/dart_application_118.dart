import "package:test/test.dart";

String decomp(int n) {
Map<int, int> m = {};
  for (int i = 2; i <= n; i++) {
    int ch = i;
    int j = 2;
    while (ch > 1 && j <= ch) {
      if (ch % j == 0) {
        m[j] = (m[j] ?? 0) + 1;
        ch ~/= j;
      } else {
        j++;
      }
    }
  }
  return m.entries
      .map((e) => e.value > 1 ? "${e.key}^${e.value}" : "${e.key}")
      .join(' * ');
}



void main() {
  testing(int n, String exp) => 
    test("Testing for $n", () => 
      expect(decomp(n), equals(exp)));
  
  group("fixed tests", () {
    testing(17, "2^15 * 3^6 * 5^3 * 7^2 * 11 * 13 * 17");
    testing(5, "2^3 * 3 * 5");
    testing(22, "2^19 * 3^9 * 5^4 * 7^3 * 11^2 * 13 * 17 * 19");
    testing(14, "2^11 * 3^5 * 5^2 * 7^2 * 11 * 13");
    testing(25, "2^22 * 3^10 * 5^6 * 7^3 * 11^2 * 13 * 17 * 19 * 23");
  });
}
