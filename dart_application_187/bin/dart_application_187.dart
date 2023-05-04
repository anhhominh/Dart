import "package:test/test.dart";

int getSectionId(int n, List<int> a) {
  int sum = 0;
  for(int i = 0 ; i < a.length ; i++){
    sum = sum + a[i];
    if(n <= sum - 1) return i;
  }
  return -1;
}

void main() {
  void testing(int n, List<int> a, int exp) => test("getSectionId($n, $a)", () => expect(getSectionId(n, a), equals(exp)));
  group('Basic tests', () {
    testing(1, [300, 200, 400, 600, 100], 0);
    testing(299, [300, 200, 400, 600, 100], 0);
    testing(300, [300, 200, 400, 600, 100], 1);
    testing(1599, [300, 200, 400, 600, 100], 4);
    testing(1600, [300, 200, 400, 600, 100], -1);
  });
}
