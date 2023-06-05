// See https://pub.dartlang.org/packages/test
import "package:test/test.dart";

int tv_remote(String word) {
  int n = 0;
  int x = 0;
  int y = 0;
  for (var c in word.split('')) {
    var p = 'abcde123fghij456klmno789pqrst.@0uvwxyz_/'.indexOf(c);
    var px = p % 8;
    var py = p ~/ 8;
    n += 1 + (px - x).abs() + (py - y).abs();
    x = px;
    y = py;
  }
  return n;
}

void main() {

  test("Example", () {
    expect(tv_remote("codewars"), equals(36));
  });
  
  test("Misc", () {
    expect(tv_remote("does"),     equals(16));
    expect(tv_remote("your"),     equals(23));
    expect(tv_remote("solution"), equals(33));
    expect(tv_remote("work"),     equals(20));
    expect(tv_remote("for"),      equals(12));
    expect(tv_remote("these"),    equals(27));
    expect(tv_remote("words"),    equals(25));
  });
  
}