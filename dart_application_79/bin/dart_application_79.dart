import "package:test/test.dart";

int sumin(int n) {
  int sum = 0;
  for(int i = 1 ; i <= n ; i++){
    for(int j = 1 ; j <= n ; j++){
      i <= j ? sum = sum + i : sum = sum + j;
    }
  }
  return sum;
}
int sumax(int n) {
  int sum = 0;
  for(int i = 1 ; i <= n ; i++){
    for(int j = 1 ; j <= n ; j++){
      i >= j ? sum = sum + i : sum = sum + j;
    }
  }
  return sum;
}
int sumsum(int n) {
  int sum = 0;
  for(int i = 1 ; i <= n ; i++){
    for(int j = 1 ; j <= n ; j++){
      sum = sum + (i+j);
    }
  }
  return sum;
}

void main() {
  test("Basic-tests", () {
    expect(sumin(5), equals(55));
    expect(sumax(8), equals(372));
    expect(sumsum(8), equals(576));
  });
}