// Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.
// For example: month 2 (February), is part of the first quarter; month 6 (June), 
//is part of the second quarter; and month 11 (November), is part of the fourth quarter.
// Constraint:
// 1 <= month <= 12

import "package:test/test.dart";

int quarter(int month) {
  int quarter  = 0;
  switch (month){
      case 1:
      case 2:
      case 3:
      quarter  = 1;
      break;
      case 4:
      case 5:
      case 6:
      quarter  = 2;
      break;
      case 7:
      case 8:
      case 9:
      quarter  = 3;
      break;
      case 10:
      case 11:
      case 12:
      quarter  = 4;
      break;
  }
  return quarter;
}

void main() {
  test("Basic Tests", () {
    expect(quarter(3), 1);
    expect(quarter(8), 3);
    expect(quarter(11), 4);
  });
}
