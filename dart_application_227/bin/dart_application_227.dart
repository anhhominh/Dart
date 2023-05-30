import "package:test/test.dart";

int dblLinear(int n) {
    List<int> u = [1];
    int x = 0;
    int y = 0;
    for (int i = 0; i < n; i++) {
        int nextX = 2 * u[x] + 1;
        int nextY = 3 * u[y] + 1;
        if (nextX <= nextY) {
            u.add(nextX);
            x++;
            if (nextX == nextY)
                y++;
        } else {
            u.add(nextY);
            y++;
        }
    }
    return u[n];
}

void main() {
  testing(int n, int exp) => 
    test("Testing for $n", () => 
      expect(dblLinear(n), equals(exp)));
  group("fixed tests", () {
    testing(10, 22);
    testing(20, 57);
    testing(30, 91);
    testing(50, 175);
    testing(100, 447);

  });
}
