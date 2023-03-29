import "package:test/test.dart";

bool tidyNumber(n) {
  List<dynamic> number = n.toString().split('');
  for(int i = 0 ; i < number.length - 1 ; i++){
    if(int.parse(number[i]) > int.parse(number[i + 1])) return false;
  }
  return true;
}

void main() {
  group("Fixed tests", () {
    test("Testing for 12", () {
      expect(tidyNumber(12), equals(true));
    });
    test("Testing for 102", () {
      expect(tidyNumber(102), equals(false));
    });
    test("Testing for 9672", () {
      expect(tidyNumber(9672), equals(false));
    });
    test("Testing for 2789", () {
      expect(tidyNumber(2789), equals(true));
    });
    test("Testing for 2335", () {
      expect(tidyNumber(2335), equals(true));
    });
  });
}