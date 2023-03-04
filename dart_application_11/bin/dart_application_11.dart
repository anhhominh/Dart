import "package:test/test.dart";

// Your job is simple, if x squared is more than 1000, 
// return It's hotter than the sun!!, else, return Help yourself to a honeycomb Yorkie for the glovebox.
String apple(dynamic a) {
  int b = int.parse(a.toString());
  return  b*b > 1000 ? "It's hotter than the sun!!" 
  : 'Help yourself to a honeycomb Yorkie for the glovebox.';
}

void main() {
  test("apple", () {
    expect(apple('50'), equals("It's hotter than the sun!!"));
    expect(apple(2), equals('Help yourself to a honeycomb Yorkie for the glovebox.'));
  });
}
