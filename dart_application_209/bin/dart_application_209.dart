// See https://pub.dartlang.org/packages/test
import "package:test/test.dart";

int base_finder(List<String> seq) {
  List<String> baseFinder = [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  Set<int> count = {};
  for(int i = 0 ; i < seq.length ; i++){
    int tmp = int.parse(seq[i]) % 10;
    for(int j = 0 ; j < baseFinder.length ; j++){
        if(tmp.toString() == baseFinder[j]) count.add(tmp);
    }
  }
  return count.length + 1;
}

void main() {
  group("Fixed tests", () {
    test(['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'], () => expect(base_finder(['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']), equals(10)));
    test(['1', '2', '3', '4', '5', '6', '10', '11', '12', '13'], () => expect(base_finder(['1', '2', '3', '4', '5', '6', '10', '11', '12', '13']), equals(7)));
  });
}