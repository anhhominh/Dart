import "package:test/test.dart";

String rgb(int r, int g, int b){
  r = (r<0)?0:r;
  g = (g<0)?0:g;
  b = (b<0)?0:b;
  r = (r>255)?255:r;
  g = (g>255)?255:g;
  b = (b>255)?255:b;
  return '${r.toRadixString(16).padLeft(2, '0').toUpperCase()}${g.toRadixString(16).padLeft(2, '0').toUpperCase()}${b.toRadixString(16).padLeft(2, '0').toUpperCase()}';
}

void main() {
  test('Basic tests', () {
    expect(rgb(255, 255, 255), equals('FFFFFF'));
    expect(rgb(255, 255, 300), equals('FFFFFF'));
    expect(rgb(0, 0, 0), equals('000000'));
    expect(rgb(148, 0, 211), equals('9400D3'));
    expect(rgb(148, -20, 211), equals('9400D3'));
    expect(rgb(144, 195, 212), equals('90C3D4'));
    expect(rgb(212, 53, 12), equals('D4350C'));
  });
}