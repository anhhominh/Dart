import "package:test/test.dart";

List<String> fixTheMeerkat(List<String> arr) {
  return arr.reversed.toList();
}

void testing(List<String> arr, List<String> exp) => test("Testing for ${arr.map((x) => "\"$x\"").toList()}", () => expect(fixTheMeerkat(arr), equals(exp)));
void main() {
  group('Basic tests', () {
    testing(["tail", "body", "head"], ["head", "body", "tail"]);
    testing(["tails", "body", "heads"], ["heads", "body", "tails"]);
    testing(["bottom", "middle", "top"], ["top", "middle", "bottom"]);
    testing(["lower legs", "torso", "upper legs"], ["upper legs", "torso", "lower legs"]);
    testing(["ground", "rainbow", "sky"], ["sky", "rainbow", "ground"]);
  });
}
