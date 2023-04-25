import "package:test/test.dart";

int add(int num1, int num2) {
  if (num1 == 0) return num2;
  if (num2 == 0) return num1;
  List<int> s = [];
  while ((num1 | num2) != 0) {
    s.insert(0, num1 % 10 + num2 % 10);
    num1 ~/= 10;
    num2 ~/= 10;
  }
  return int.parse(s.join(''));
}

// //cách khác
// int add(int num1, int num2){
//   String one = num1.toString();
//   String two = num2.toString();
//   one = one.padLeft(two.length, '0');
//   two = two.padLeft(one.length, '0');
//   String result = '';
//   for (int i = 0; i<one.length; i++){
//      result+=(int.parse(one[i])+int.parse(two[i])).toString();
//   }
//   return int.parse(result);
// }

void main() {
  test("Sample Tests", () {
    expect(add(16, 18), equals(214));
    expect(add(2,11), equals(13));
    expect(add(0,1), equals(1));
    expect(add(0,0), equals(0));
  });
}