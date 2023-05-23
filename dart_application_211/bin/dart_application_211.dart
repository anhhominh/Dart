import "package:test/test.dart";

String well(List<String> x) {
  int count = 0;
  for(int i = 0 ; i < x.length ; i++){
    if(x[i] == 'good'){
      count++;
    }
  }
  return count == 0 ? 'Fail!' : count <= 2 ? 'Publish!' : 'I smell a series!';
}

void main() {
  group('basic tests', () {
    test("Testing for ['bad', 'bad', 'bad']", () =>
      expect(well(['bad', 'bad', 'bad']), equals('Fail!')));
    test("Testing for ['good', 'bad', 'bad', 'bad', 'bad']", () =>
      expect(well(['good', 'bad', 'bad', 'bad', 'bad']), equals('Publish!')));
    test("Testing for ['good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good']", () =>
      expect(well(['good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good']), equals('I smell a series!')));
  });
}