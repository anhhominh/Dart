import "package:test/test.dart";

String longest(String a, String b) {
  var newString = (a+b).split('').toSet();
  final longestList = newString.toList();
  longestList.sort();
  return longestList.join('');
}

void main() {
  void testing(String a, String b, String exp) {
    test("longest('$a', '$b')", () => expect(longest(a, b), equals(exp)));
  }
  group("Fixed tests", () {
    testing("aretheyhere", "yestheyarehere", "aehrsty");
    testing("loopingisfunbutdangerous", "lessdangerousthancoding", "abcdefghilnoprstu");
    testing("inmanylanguages", "theresapairoffunctions", "acefghilmnoprstuy");
    testing("lordsofthefallen", "gamekult", "adefghklmnorstu");
    testing("codewars", "codewars", "acdeorsw");
    testing("agenerationmustconfrontthelooming", "codewarrs", "acdefghilmnorstuw");
  });
}
