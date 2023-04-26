import "package:test/test.dart";

String addLetters(List<String> letters) {
  if(letters.length==0) return 'z';
    var x = 0;
    for(var i=0; i<letters.length; i++){
      x += letters[i].codeUnitAt(0) - 96;
      if(x>26) x = x-26;
      }
    var y = String.fromCharCode((x)+96);
  return y;
}

void main() {
  group("Fixed tests", () {
    List tests = [
      [['a', 'b', 'c'], 'f'],
      [['z'], 'z'],
      [['a', 'b'], 'c'],
      [['c'], 'c'],
      [['z', 'a'], 'a'],
      [['y', 'c', 'b'], 'd'],
      [<String>[], 'z']
    ];
    tests.forEach((t) {
      test("Testing for [${t[0].map((x) => "\"$x\"").join(', ')}]", () => expect(addLetters(t[0]), equals(t[1])));
    });
  });
}
