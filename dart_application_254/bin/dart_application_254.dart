// See https://pub.dartlang.org/packages/test
import "package:test/test.dart";

String updateLight(String current) {
  if(current == "green") return "yellow";
  if(current == "yellow") return "red";
  return "green";
}

void main() {
  group("Sample tests", () {
    test("current light is green", () {
      expect(updateLight("green"), equals("yellow"));
    });
    test("current light is yellow", () {
      expect(updateLight("yellow"), equals("red"));
    });
    test("current light is red", () {
      expect(updateLight("red"), equals("green"));
    });
  });
}
