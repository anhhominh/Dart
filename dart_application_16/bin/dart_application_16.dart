import "package:test/test.dart";
import "dart:core";
import "dart:math";
/*
This program tests the life of an evaporator containing a gas.
We know the content of the evaporator (content in ml), 
the percentage of foam or gas lost every day (evap_per_day) and the threshold (threshold) 
in percentage beyond which the evaporator is no longer useful. All numbers are strictly positive.
The program reports the nth day (as an integer) on which the evaporator will be out of use.
*/
int evaporator(double content, double evap_per_day, double threshold){
  int days = 0;
  double percent = 100;
  while (percent > threshold){
    percent = percent - percent*evap_per_day/100;
    days++;
  }
  return days;
}


void main() {
  test("Sample Test Cases", () {
    expect(evaporator(10, 10, 10), equals(22));
    expect(evaporator(10, 10, 5), equals(29));
    expect(evaporator(100, 5, 5), equals(59));
  });
}