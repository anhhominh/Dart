import "package:test/test.dart";

bool inviteMoreWomen(List<int> l) {
  int sum = 0;
  for(int i = 0 ; i < l.length  ; i++){
    sum = sum + l[i];
  }
  return sum > 0 ? true : false;
}

void main() {
  group('Basic tests', () {
    test("Testing for [1, -1, 1]", () => expect(inviteMoreWomen([1, -1, 1]), equals(true)));
    test("Testing for [-1, -1, -1]", () => expect(inviteMoreWomen([-1, -1, -1]), equals(false)));
    test("Testing for [1, -1]", () => expect(inviteMoreWomen([1, -1]), equals(false)));
    test("Testing for [1, 1, 1]", () => expect(inviteMoreWomen([1, 1, 1]), equals(true)));
  });
}