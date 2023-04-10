import "package:test/test.dart";

int? firstNonConsecutive(List<int> arr) { 
  for(int i = 0 ; i < arr.length - 1; i++){
    if(arr[i+1] - arr[i] > 1) return arr[i+1];
  }
  return null;
}

void main() {
  test("a simple example", () {
    final first = firstNonConsecutive(const [1,2,3,4,6,7,8]);
    expect(first, equals(6));
  });
}
