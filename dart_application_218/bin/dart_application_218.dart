import "package:test/test.dart";

bool consecutiveDucks(int n) {
  return n & n - 1 != 0;
}

void main() {
  group("Consecutive Ducks", () {
    test("Check Small Values", () {
      expect(consecutiveDucks(69), equals(true));
      expect(consecutiveDucks(8), equals(false));
      expect(consecutiveDucks(57), equals(true));
      expect(consecutiveDucks(6), equals(true));
      expect(consecutiveDucks(13), equals(true));
      expect(consecutiveDucks(16), equals(false));
      expect(consecutiveDucks(91), equals(true));
      expect(consecutiveDucks(75), equals(true));
      expect(consecutiveDucks(38), equals(true));
      expect(consecutiveDucks(25), equals(true));
      expect(consecutiveDucks(32), equals(false));
      expect(consecutiveDucks(65), equals(true));
      expect(consecutiveDucks(13), equals(true));
      expect(consecutiveDucks(16), equals(false));
      expect(consecutiveDucks(99), equals(true));
    });
    test("Check Medium Values", () {
      expect(consecutiveDucks(522), equals(true));
      expect(consecutiveDucks(974), equals(true));
      expect(consecutiveDucks(755), equals(true));
      expect(consecutiveDucks(512), equals(false));
      expect(consecutiveDucks(739), equals(true));
      expect(consecutiveDucks(1006), equals(true));
      expect(consecutiveDucks(838), equals(true));
      expect(consecutiveDucks(1092), equals(true));
      expect(consecutiveDucks(727), equals(true));
      expect(consecutiveDucks(648), equals(true));
      expect(consecutiveDucks(1024), equals(false));
      expect(consecutiveDucks(851), equals(true));
      expect(consecutiveDucks(541), equals(true));
      expect(consecutiveDucks(1011), equals(true));
      expect(consecutiveDucks(822), equals(true));
    });
    test("Check Large Values", () {
      expect(consecutiveDucks(382131), equals(true));
      expect(consecutiveDucks(118070), equals(true));
      expect(consecutiveDucks(17209), equals(true));
      expect(consecutiveDucks(32768), equals(false));
      expect(consecutiveDucks(161997), equals(true));
      expect(consecutiveDucks(400779), equals(true));
      expect(consecutiveDucks(198331), equals(true));
      expect(consecutiveDucks(325482), equals(true));
      expect(consecutiveDucks(88441), equals(true));
      expect(consecutiveDucks(648), equals(true));
      expect(consecutiveDucks(65536), equals(false));
      expect(consecutiveDucks(323744), equals(true));
      expect(consecutiveDucks(183540), equals(true));
      expect(consecutiveDucks(65271), equals(true));
      expect(consecutiveDucks(5263987), equals(true));
    });
  });
}
