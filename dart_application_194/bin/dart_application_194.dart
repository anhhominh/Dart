import "package:test/test.dart";

int romanToInt (String s){
  var data = {'M': 1000, 'D': 500, 'C': 100, 'L': 50, 'X': 10, 'V': 5, 'I': 1}, numbers = s.split(''), sum = 0;
  if(numbers.length == 1) return data[numbers[0]];
  print(numbers);
  int index = 0;
  for(int i = 0; i < numbers.length - 1; i++){
      if(data[numbers[i]] < data[numbers[i+1]]){
        sum += data[numbers[i+1]] - data[numbers[i]];
        index = i+1;
        i++;
      }
      else {
        sum += data[numbers[i]];
        print(sum);      
        index = i;
      }
  }
  print(index);
  if(index < numbers.length - 1) sum = sum + data[numbers[numbers.length - 1]];
  return sum;
}

void main() {
  test("Sample Tests", () {
    expect(romanToInt('I'), equals(1));
    expect(romanToInt('IV'), equals(4));
    expect(romanToInt('LVIII'), equals(58));
    expect(romanToInt('MCMXCIV'), equals(1994));
    
  });
}