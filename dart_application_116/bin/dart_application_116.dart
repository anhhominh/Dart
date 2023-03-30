import "package:test/test.dart";
import 'dart:math';

int predictAge(int age1,int age2, int age3, int age4, int age5, int age6, int age7, int age8) {
  int age = sqrt(age1*age1 + age2*age2 + age3*age3 + age4*age4 + age5*age5 + age6*age6 + age7*age7 + age8*age8)~/2;                                             
  return age;
}

void main() {
  test('predictAge(65,60,75,55,60,63,64,45) equals 86', () {
    expect(predictAge(65,60,75,55,60,63,64,45), equals(86));
  });
  test('predictAge(32,54,76,65,34,63,64,45), equals 79', () {
    expect(predictAge(32,54,76,65,34,63,64,45), equals(79));
  });
}