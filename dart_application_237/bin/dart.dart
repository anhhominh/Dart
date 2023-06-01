import "package:test/test.dar
import "package:solution/preloaded.dart";

String recover(String str) {
  String res = '';
  final nums = {"ZERO": 0, "ONE": 1, "TWO": 2, "THREE": 3, "FOUR": 4, "FIVE": 5, "SIX": 6, "SEVEN": 7, "EIGHT": 8, "NINE": 9 };
  for (int i = 0; i < str.length; i++) {
    for (var entry in nums.entries) {
      if (i + entry.key.length > str.length) continue;
      String s = str.substring(i, i + entry.key.length);
      if ((s.split('')..sort()).join() == (entry.key.split('')..sort()).join()) {
        res += entry.value.toString();
        break;
      }
    }
  }
  return res.isEmpty ? 'No digits found' : res;
}

void main() {
  test("Default test cases", () {
    expect(recover("NEO"), equals("1"));
    expect(recover("ONETWO"), equals("12"));
    expect(recover("TWWTONE"), equals("21"));
    expect(recover("OTNE"), equals("No digits found"));
    expect(recover("ZYX"), equals("No digits found"));
    expect(recover("ONENO"), equals("11"));
    expect(recover("ZERO"), equals("0"));
    expect(recover("NEOTWONEINEIGHTOWSVEEN"), equals("12219827"));
    expect(recover("FOURSEVENTHREENINETWOIOSNSIXNNEIGHTFIVEONEJFTHREE"), equals("4739926985113"));
  });
}