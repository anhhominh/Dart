import "package:test/test.dart";

class OmniBool extends Object{
  @override
  bool operator == (dynamic other) => true;
}

var omnibool = OmniBool(); 

void main() {
  group("basic tests", () {
    test("== true", () => expect(omnibool == true, isTrue));
    test("== false", () => expect(omnibool == false, isTrue));
  });
}