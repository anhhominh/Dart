import "package:test/test.dart";

String a = "code";
String b = "wa.rs";
String name = a + b;

void main() {
  test('Test', () {
    expect(name, equals('codewa.rs'));
  });
}