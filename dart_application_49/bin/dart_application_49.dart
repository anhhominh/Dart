import "package:test/test.dart";

String updateLight(String current) {
  String kqua = "";
  if(current == "green") kqua = 'yellow';
  if(current == "yellow") kqua = 'red';
  if(current == "red") kqua = 'green';
  return kqua;
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
