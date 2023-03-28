import "package:test/test.dart";

int goals(int laLigaGoals, int copaDelReyGoals, int championsLeagueGoals) {
  return laLigaGoals + copaDelReyGoals + championsLeagueGoals;
}

void main() {
  group("Fixed tests", () {
    test("goals(0, 0, 0)", () => expect(goals(0, 0, 0), equals(0)));
    test("goals(43, 10, 5)", () => expect(goals(43, 10, 5), equals(58)));
  });
}
