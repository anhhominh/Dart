import "package:test/test.dart";
import "dart:math";

int fcn (int n) {
    int sum = 0;
    for(int i = 0 ; i < n ; i++){
      sum = sum + pow(2,i);
    }
    return sum+1;
}

void main() {
  testequal(int n, int exp) => 
    test("Testing for $n", () => 
      expect(fcn(n), equals(exp)));
  group("fixed tests", () {
    testequal(17, 131072);
    testequal(21, 2097152);
    testequal(60, 1152921504606846976);
  });
}
