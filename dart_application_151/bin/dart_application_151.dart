import "package:test/test.dart";
import "dart:math";

String wallpaper(double l, double w, double h) {
String wallpaper(double l, double w, double h) {
  var numbers = ['zero', 'one', 'two', 'three', 'four', 'five','six', 'seven', 'eight', 'nine', 'ten', 'eleven','twelve', 'thirteen', 'fourteen', 'fifteen','sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty'];
  return w * h * l == 0 ? numbers[0] : numbers[((l * h * 2 + w * h * 2) * 1.15 / 5.2).ceil()];
}
}

void main() {
  void testing(double l, double w, double h, String exp) =>
    test("wallpaper($l, $w, $h)", () => expect(wallpaper(l, w, h), equals(exp)));
  group("Basic tests", () {
    testing(6.3, 4.5, 3.29, "sixteen");
    testing(6.3, 5.8, 3.13, "seventeen");
    testing(6.1, 2.0, 3.15, "twelve");
    testing(4.4, 3.0, 2.75, "ten");
    testing(7.9, 5.4, 3.33, "twenty");
    testing(7.9, 5.4, 0, "zero");
  });
}