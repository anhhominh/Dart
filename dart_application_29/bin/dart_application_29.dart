import "package:test/test.dart";

/*
Complete the function so that it finds the average of the three scores passed 
to it and returns the letter value associated with that grade.
*/
String getGrade(int a, int b, int c) {
  int score = ((a+b+c)/3).toInt();
  if(90<=score && score<=100) return 'A';
  else if(80 <= score && score < 90)return 'B';
    else if(70 <= score && score < 80) return 'C';
      else if(60 <= score && score < 70) return 'D';
        else return 'F';
}

void main() {
  group('Fixed tests', () {
    test("getGrade(95, 90, 93)", () => expect(getGrade(95, 90, 93), equals('A')));
    test("getGrade(100, 85, 96)", () => expect(getGrade(100, 85, 96), equals('A')));
    test("getGrade(92, 93, 94)", () => expect(getGrade(92, 93, 94), equals('A')));
    test("getGrade(100, 100, 100)", () => expect(getGrade(100, 100, 100), equals('A')));
    test("getGrade(70, 70, 100)", () => expect(getGrade(70, 70, 100), equals('B')));
    test("getGrade(82, 85, 87)", () => expect(getGrade(82, 85, 87), equals('B')));
    test("getGrade(84, 79, 85)", () => expect(getGrade(84, 79, 85), equals('B')));
    test("getGrade(70, 70, 70)", () => expect(getGrade(70, 70, 70), equals('C')));
    test("getGrade(75, 70, 79)", () => expect(getGrade(75, 70, 79), equals('C')));
    test("getGrade(60, 82, 76)", () => expect(getGrade(60, 82, 76), equals('C')));
    test("getGrade(65, 70, 59)", () => expect(getGrade(65, 70, 59), equals('D')));
    test("getGrade(66, 62, 68)", () => expect(getGrade(66, 62, 68), equals('D')));
    test("getGrade(58, 62, 70)", () => expect(getGrade(58, 62, 70), equals('D')));
    test("getGrade(44, 55, 52)", () => expect(getGrade(44, 55, 52), equals('F')));
    test("getGrade(48, 55, 52)", () => expect(getGrade(48, 55, 52), equals('F')));
    test("getGrade(58, 59, 60)", () => expect(getGrade(58, 59, 60), equals('F')));
    test("getGrade(0, 0, 0)", () => expect(getGrade(0, 0, 0), equals('F')));
  });
}
