import "package:test/test.dart";
int primeFactorsLength(n){
      var count = 0, i = 2;
      while (i * i <= n) {
          while (n % i == 0) {
              count++;
              n /= i;
          }
          i++;
      }
      if (n > 1) count++;
      return count;
    }

List<List<int>> kprimesStep(int k, int step, int start, int end) {
   List<List<int>> res = [];
   int i = start;
    while (i <= end-step) {
        if ((primeFactorsLength(i) == k && primeFactorsLength(i+step) == k)) 
            res.add([i, i+step]);
      i++;
    }
    return res;
}


void main() {
  testing(int k, int step, int start, int limit, List<List<int>> exp) => 
    test("Testing for $k $step $start $limit", () => 
      expect(kprimesStep(k, step, start, limit), equals(exp)));
  
  group("fixed tests", () {
    testing(10, 8, 2425364, 2425700, []);
    testing(6, 8, 2627371, 2627581, [[2627408, 2627416], [2627440, 2627448], [2627496, 2627504]]);
    testing(4, 6, 274279, 274288, [[274281, 274287]]);
    testing(7, 9, 277573, 278017, [[277875, 277884]]);
    
  });
}
