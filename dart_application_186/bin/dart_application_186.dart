import "package:test/test.dart";
import "dart:math";

int halvingSum(int n) {
  int sum = 0;
  for(int i = 1 ; i <= n ; i = i * 2){
    int tmp = (n/i).floor();
    print(tmp);
    sum = sum + tmp;
  }
  return sum;
}

void main() {
  
  group('Fixed tests', () {
    final tests = [
      [25, 47],
      [127, 247],
    ];
    for (final t in tests) {
      test("${t.first} -> ${t.last}", () {
        expect(halvingSum(t.first), equals(t.last));
      });
    }
  });
}