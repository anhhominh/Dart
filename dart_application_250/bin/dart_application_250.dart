import "package:test/test.dart";
import 'dart:math';

// Your new function as given to you by me, your boss.
int cutLog(List<int> p, int n) {
   if (n == 0) return 0;
    
    for(int i = 2 ; i < n+1; i++){
      List<int> num = [];
      for(int k = 0 ; k < ((i/2).floor() +1) ; k++){
              num.add(p[i-k] + p[k]);
      }
      num.sort();
        p[i] = num[num.length - 1];

    }
        
    return p[n];// Good luck intern!
}

void main() {
/// The p list is organized by price to foot by index, so the
/// 1st element contains the price for 1 ft, 2nd is for 2 ft,
/// 3rd is 3 ft, etc...

//         0    1    2    3    4    5    6    7... and so on
var p = [ 0, 1, 5, 8, 9, 10, 17, 17, 20, 24, // 0X's
          30, 32, 35, 39, 43, 43, 45, 49, 50, 54, // 1X's
          57, 60, 65, 68, 70, 74, 80, 81, 84, 85, // 2X's
          87, 91, 95, 99, 101, 104, 107, 112, 115, 116, // 3X's
          119, 121, 125, 129, 131, 134, 135, 140, 143, 145, // 4X's
          151
]; // 50th element
// Note that the 0th element has a cost of $0

group("Example Log", () {
  test("The optimal price for n = 0 should be \$0", () =>
      expect(cutLog(p, 0), equals(0)));
  test("The optimal price for n = 1 should be \$1", () =>
      expect(cutLog(p, 1), equals(1)));
  test("The optimal price for n = 5 should be \$13", () =>
      expect(cutLog(p, 5), equals(13)));
  test("The optimal price for n = 8 should be \$22", () =>
      expect(cutLog(p, 8), equals(22)));
  test("The optimal price for n = 10 should be \$30", () =>
      expect(cutLog(p, 10), equals(30)));
  test("The optimal price for n = 22 should be \$65", () =>
      expect(cutLog(p, 22), equals(65)));
  test("The optimal price for n = 23 should be \$69", () =>
      expect(cutLog(p, 23), equals(69)));
  test("The optimal price for n = 37 should be \$112", () =>
      expect(cutLog(p, 37), equals(112)));
  test("The optimal price for n = 41 should be \$125", () =>
      expect(cutLog(p, 41), equals(125)));
  test("The optimal price for n = 50 should be \$153", () =>
      expect(cutLog(p, 50), equals(153)));
});

}
