import "package:test/test.dart";

List<List<int>> pyramid(int n) {
  List<List<int>> num = [];
  for(int i = 0 ; i < n ; i++){
    List<int> tmp = [];
    for(int j = 0 ; j <= i ; j++){
      tmp.add(1);
    }
    num.add(tmp);
  }
  return num;
}

void main() {
  void tester(int n, List<List<int>> exp) => test("Testing for $n", () => expect(pyramid(n), equals(exp)));
  group('basic tests', () {
    tester(0, []);
    tester(1, [[1]]);
    tester(2, [[1], [1, 1]]);
    tester(3, [[1], [1, 1], [1, 1, 1]]);
  });
}
