import "package:test/test.dart";

int sumOfABeach(String beach) {
  int count = 0;
  String str = beach.toLowerCase().replaceAll(" ","").replaceAll("sand"," ").replaceAll("water"," ").replaceAll("fish"," ").replaceAll("sun"," ");
  for(int i = 0; i < str.length ; i++){
    if(str[i] == " ") count++; 
  }
  return count;
}

void testing(inp, exp) {
  test("Testing for $inp", () {
    expect(sumOfABeach(inp), equals(exp));
  });
}

void main() {
  group("Fixed tests", () {
    testing("SanD", 1);
    testing("sunshine", 1);
    testing("sunsunsunsun", 4);
    testing("123FISH321", 1);
    testing("weoqipurpoqwuirpousandiupqwoieurioweuwateruierqpoiweurpouifiShqowieuqpwoeuisUn", 4);
    testing("sAnDsandwaTerwatErfishFishsunsunsandwater", 10);
    testing("joifjepiojfoiejfoajoijawoeifjowejfjoiwaefjiaowefjaofjwoj fawojef ", 0);
    testing("jwefjwjfsandsandwaterwaterfishfishsunsunsandwateriojwhefa;jawof;jawio;f", 10);
    testing("saNdsandwaterwAterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwatersandsandwaterwaterfishfishsunsunsandwater", 100);
    testing("sununsu", 1);
    testing("sandandndsansa", 1);
    testing("wateratertererwatewatwa", 1);
    testing("fishishshfisfi", 1);
  });
}

