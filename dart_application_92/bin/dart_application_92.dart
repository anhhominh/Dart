import "package:test/test.dart";
import "dart:math";

int solve(String s){
  List<int> result = [];
  int count = 0;
  s.split('').forEach((letter){
    if(['a', 'i', 'u', 'e', 'o'].contains(letter)){
      count++;
    }else{
      count = 0;
    }
    
    result.add(count);
  });
  return result.reduce(max);
}

void main() {
  group("Fixed tests", () {
    test("Testing for codewarriors", () => expect(solve("codewarriors"), equals(2)));
    test("Testing for suoidea", () => expect(solve("suoidea"), equals(3)));
    test("Testing for ultrarevolutionariees", () => expect(solve("ultrarevolutionariees"), equals(3)));
    test("Testing for strengthlessnesses", () => expect(solve("strengthlessnesses"), equals(1)));
    test("Testing for cuboideonavicuare", () => expect(solve("cuboideonavicuare"), equals(2)));
    test("Testing for chrononhotonthuooaos", () => expect(solve("chrononhotonthuooaos"), equals(5)));
    test("Testing for iiihoovaeaaaoougjyaw", () => expect(solve("iiihoovaeaaaoougjyaw"), equals(8)));
  });
}