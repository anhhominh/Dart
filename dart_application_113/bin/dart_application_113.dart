import "package:test/test.dart";

List<num> tribonacci(List<num> signature, int n) {
  if(n == 0 ) return [];  
  if(n >= 1 && n <= 3){
    List<num> number = [];
    for(int i = 0 ; i < n ; i++){
      number.add(signature[i]);
    }
    return number;
  }
  List<num> tribonacci = [];
  tribonacci.add(signature[0]);
  tribonacci.add(signature[1]);
  tribonacci.add(signature[2]);
  for (int i = 3; i < n; i++){
      dynamic tmp = tribonacci[i - 1] + tribonacci[i - 2] + tribonacci[i - 3];
      tribonacci.add(tmp);
    }
  return tribonacci;
}

void tester(List<num> sig, int n, List<num> exp) => test("tribonacci($sig, $n)", () => expect(tribonacci(sig, n), equals(exp)));
void main() {
  group("Basic tests", () {
    tester([1, 1, 1], 10, [1, 1, 1, 3, 5, 9, 17, 31, 57, 105]);
    tester([0, 0, 1], 10, [0, 0, 1, 1, 2, 4, 7, 13, 24, 44]);
    tester([0, 1, 1], 10, [0, 1, 1, 2, 4, 7, 13, 24, 44, 81]);
    tester([1, 0, 0], 10, [1, 0, 0, 1, 1, 2, 4, 7, 13, 24]);
    tester([0, 0, 0], 10, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    tester([1, 2, 3], 10, [1, 2, 3, 6, 11, 20, 37, 68, 125, 230]);
    tester([3, 2, 1], 10, [3, 2, 1, 6, 9, 16, 31, 56, 103, 190]);
    tester([1, 1, 1], 1, [1]);
    tester([300, 200, 100], 0, []);
    tester([0.5, 0.5, 0.5], 30, [0.5, 0.5, 0.5, 1.5, 2.5, 4.5, 8.5, 15.5, 28.5, 52.5, 96.5, 177.5, 326.5, 600.5, 1104.5, 2031.5, 3736.5, 6872.5, 12640.5, 23249.5, 42762.5, 78652.5, 144664.5, 266079.5, 489396.5, 900140.5, 1655616.5, 3045153.5, 5600910.5, 10301680.5]);
  }); 
}