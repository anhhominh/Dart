import "package:test/test.dart";

String solution(str) {
  var chars = str.split('');
  return chars.reversed.join();
}

void main() {
  test('reversed world', () {
    expect(solution('world'), equals('dlrow'));
  });

  test('hello reversed', () {
    expect(solution('hello'), equals('olleh'));
  });

  test('reversed ', () {
    expect(solution(''), equals(''));
  });

  test('reversed h', () {
    expect(solution('h'), equals('h'));
  });
}
