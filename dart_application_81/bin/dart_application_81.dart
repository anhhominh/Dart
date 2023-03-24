import "package:test/test.dart";

String chromosome_check(String sperm) {
  return sperm[sperm.length -1] == "X" ? "Congratulations! You're going to have a daughter." : "Congratulations! You're going to have a son.";
}

void main() {
  test('Basic tests', () {
    expect(chromosome_check('XY'), equals("Congratulations! You're going to have a son."));
    expect(chromosome_check('XX'), equals("Congratulations! You're going to have a daughter."));
  });
}