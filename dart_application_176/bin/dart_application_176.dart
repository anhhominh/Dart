import "package:test/test.dart";
import "dart:math";
int growingPlant(int upSpeed, int downSpeed, int desiredHeight) {
  int currentHeight = 0;
  int day = 0;
  for(var i=1;;i++){
  currentHeight+=upSpeed;
  if(currentHeight>=desiredHeight){
        break;
  }
  else{
      currentHeight-=downSpeed;
  }  
    day = i;
  }
  return day+1;
}

void main() {
  group('basic tests', () {
    test("growingPlant(100, 10, 910)", () => expect(growingPlant(100, 10, 910), equals(10)));
    test("growingPlant(10, 9, 4)", () => expect(growingPlant(10, 9, 4), equals(1)));
    test("growingPlant(5, 2, 5)", () => expect(growingPlant(5, 2, 5), equals(1)));
    test("growingPlant(5, 2, 6)", () => expect(growingPlant(5, 2, 6), equals(2)));
  });
}