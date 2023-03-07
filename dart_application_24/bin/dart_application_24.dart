import "package:test/test.dart";
/*
Given an array of numbers, return a new array of length number 
containing the last even numbers from the original array (in the same order). 
The original array will be not empty and will contain at least "number" even numbers.
*/

List<int> evenNumbers(List<int> arr, int n) {
  List<int> number = [];
  int dem = 0;
  for(int i = arr.length - 1 ; i >= 0 ; i--){
    if(arr[i]%2==0 && dem <= n - 1 ){
        number.add(arr[i]);
        dem++;
      }
    }
  List<int> reversedList = new List.from(number.reversed);//đảo ngược lại list
  return reversedList;
}

void main() {
  group('Fixed tests', () {
    test("evenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)", () => expect(evenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3), equals([4, 6, 8])));
    test("evenNumbers([-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26], 2)", () => expect(evenNumbers([-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26], 2), equals([-8, 26])));
    test("evenNumbers([6, -25, 3, 7, 5, 5, 7, -3, 23], 1)", () => expect(evenNumbers([6, -25, 3, 7, 5, 5, 7, -3, 23], 1), equals([6])));
  });
}