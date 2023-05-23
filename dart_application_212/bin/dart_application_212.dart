// See https://pub.dartlang.org/packages/test
import "package:test/test.dart";

int oddCount(n) {
  int count = 0;
  for(int i = 1 ; i < n ; i++){
    if(i % 2 != 0){
      count++;
    }
  }
  return count;
}


void main() {
  group("basic tests", () {
    test('testing for 15', () {
      expect(oddCount(15), equals(7));
    });
    test('testing for 15023', () {
      expect(oddCount(15023), equals(7511));
    });
  });
}