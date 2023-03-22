import "package:test/test.dart";

bool setAlarm(bool employed, bool vacation) {
  return employed == true && vacation == false ? true : false; 
}

void main() {
  group("basic tests", () {
    test("setAlarm(true, true)", () => expect(setAlarm(true, true), equals(false)));
    test("setAlarm(false, true)", () => expect(setAlarm(false, true), equals(false)));
    test("setAlarm(true, false)", () => expect(setAlarm(true, false), equals(true)));
    test("setAlarm(false, false)", () => expect(setAlarm(false, false), equals(false)));
  });
}
