import "package:test/test.dart";

int catchSignChange (List<int> arr) {  
  if (arr.isEmpty) {
    return 0;
  }
  
  int count = 0;
  int prev = arr[0];
  
  for (int i = 1; i < arr.length; i++) {
    if (prev < 0 != arr[i] < 0) {
      count++;
    }
    prev = arr[i];
  }
  
  return count;
}

void main() {
  test("Basic Tests", () {
    expect(catchSignChange([1, 3, 4, 5]), equals(0));
    expect(catchSignChange([1, -3, -4, 0, 5]), equals(2));
    expect(catchSignChange([]), equals(0));
    expect(catchSignChange([-47,84,-30,-11,-5,74,77]), equals(3));
  });
}