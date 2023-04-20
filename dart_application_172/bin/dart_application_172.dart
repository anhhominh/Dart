import "package:test/test.dart";

BigInt perimeter(int m){
  var a = BigInt.zero;
  var b = BigInt.one;
  var sum = BigInt.one;

  for (var i = 0; i < m; i++) {
    final v = a + b;
    a = b;
    b = v;
    sum += v;
  }

  return sum * BigInt.from(4);
}

void main() {
  dotest(int n, String exp) {
    test("Testing for $n", () =>
      expect(perimeter(n), equals(BigInt.parse(exp))));
  }
  group("fixed tests", () {
    dotest(5, "80");
    dotest(7, "216");
    dotest(20, "114624");
    dotest(30, "14098308");
    dotest(250, "133797491887924782725427226931777586764021526282323488");
    
  });
}