import "dart:math";
import "package:test/test.dart";

int sumOfIntervals(List<List<int>> intervals) {
  intervals.sort((a, b) => a[0].compareTo(b[0]));
  int sum = 0;
  int current_start = intervals[0][0];
  int current_end = intervals[0][1];
  for( int i = 1 ; i < intervals.length ; i++){
    if (intervals[i][0] > current_end){
      sum += current_end - current_start;
      current_start = intervals[i][0];
      current_end = intervals[i][1]; 
    }
    else{
      current_end = max(current_end, intervals[i][1]);
    }
  }
  return sum += current_end - current_start;
}



void main() {
  group('basic tests', () {
    test("Testing for [[1, 5]]", () => expect(sumOfIntervals([[1, 5]]), equals(4)));
    test("Testing for [[1, 5], [6, 10]]", () => expect(sumOfIntervals([[1, 5], [6, 10]]), equals(8)));
    test("Testing for [[1, 5], [1, 5]]", () => expect(sumOfIntervals([[1, 5], [1, 5]]), equals(4)));
    test("Testing for [[1, 4], [7, 10], [3, 5]]", () => expect(sumOfIntervals([[1, 4], [7, 10], [3, 5]]), equals(7)));
  });
  
  group('large intervals', () {
    test("Testing for [[-1000000000, 1000000000]]", () => expect(sumOfIntervals([[-1000000000, 1000000000]]), equals(2000000000)));
    test("Testing for [[0, 20], [-100000000, 10], [30, 40]]", () => expect(sumOfIntervals([[0, 20], [-100000000, 10], [30, 40]]), equals(100000030)));
  });
}