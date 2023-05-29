import "package:test/test.dart";

bool isUnitary(List<double> m) {
  if(m[0] == m [3] && (m[1] == m[2] || m[1] == -m[2])  && (m[0] != 0 && m[3] != 0 || m[1] != 0 && m[2] != 0) ) return true;
  return false;
}

void main() {
  testing(List<double> m, bool exp) {
    test("Testing for: $m", () =>
      expect(isUnitary(m), equals(exp)));
  }
  
  group("fixed tests", () {
    testing([1, 0, 0, 1], true);
    testing([0, 0, 0, 0], false);
  });
}
