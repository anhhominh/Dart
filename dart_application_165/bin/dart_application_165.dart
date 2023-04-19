import "package:test/test.dart";

List<int> bonus(List<int> arr, int s) {
  List<int> result = [];
  for(int i = 0 ; i < arr.length ; i++){
    int tmp = arr[i];
    dynamic value = 0;
    for(int j = 0 ; j < arr.length ; j++){
        value = value + tmp/arr[j];
    }
    result.add((s/value).round());
  }
  return result;
}

void main() {
  void dotest(List<int> arr, int s, List<int> exp) => expect(bonus(arr, s), equals(exp));
  group("Tests", () {
    test("Sample tests", () {
      dotest([22, 3, 15], 18228, [1860, 13640, 2728]);
      dotest([8, 14, 11], 23541, [10241, 5852, 7448]);
      dotest([8, 20, 17], 25281, [13515, 5406, 6360]);
      dotest([6, 15, 23], 22156, [13340, 5336, 3480]);
      dotest([7, 9, 12], 10880, [4608, 3584, 2688]);
    });
  });
}