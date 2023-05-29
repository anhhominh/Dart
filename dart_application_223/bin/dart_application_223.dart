import "package:test/test.dart";

bool validBraces(String str) {
  var prev = "";
  while (str.length != prev.length) {
            prev = str;
            str = str
                .replaceAll("()", "")
                .replaceAll("[]", "")
                .replaceAll("{}", "");                
    }
    return (str.length == 0);
}

void main() {
  test('Example tests', () {
    expect(validBraces( '()' ), isTrue);
    expect(validBraces( '[(])' ), isFalse);
  });
}
