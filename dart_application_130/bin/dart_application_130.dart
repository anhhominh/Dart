import "package:test/test.dart";

String getMiddle(String s) {
  int middle = (s.length/2).toInt();
  return s.length%2 == 0 ? "${s[middle-1]}${s[middle]}" : "${s[middle]}";
}

void main() {
  test("test", (){expect(getMiddle("test"),equals("es"));});
  test("testing", (){expect(getMiddle("testing"),equals("t"));});
  test("middle", (){expect(getMiddle("middle"),equals("dd"));});
  test("A", (){expect(getMiddle("A"),equals("A"));});
}
