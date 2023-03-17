import "package:test/test.dart";

String vertMirror(String str) {
  return str.split('\n').map((e) => e.split('').reversed.join()).join('\n');
}
String horMirror(String str) {
  return str.split('\n').reversed.join('\n');
}
String oper(String fct(String str), String s) {
  return fct(s);
}

void main() {
  void testing(String act, String exp) => expect(act, equals(exp));
  group("opstrings", () {
    test("Basic tests vertMirror", () {
      testing(oper(vertMirror, "hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu"), "QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw");
      testing(oper(vertMirror, "IzOTWE\nkkbeCM\nWuzZxM\nvDddJw\njiJyHF\nPVHfSx"), "EWTOzI\nMCebkk\nMxZzuW\nwJddDv\nFHyJij\nxSfHVP");
    });
    test("Basic tests horMirror", () {
      testing(oper(horMirror, "lVHt\nJVhv\nCSbg\nyeCt"), "yeCt\nCSbg\nJVhv\nlVHt");
      testing(oper(horMirror, "njMK\ndbrZ\nLPKo\ncEYz"), "cEYz\nLPKo\ndbrZ\nnjMK");
    });
  });
}
