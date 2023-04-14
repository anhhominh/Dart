import "package:test/test.dart";
int save(List<int> sizes, int hd) {
  int count = 0;
  int sum = 0;
  for(int i = 0 ; i < sizes.length ; i++){
    sum = sum + sizes[i];
    if(sum <= hd) count ++;
    if(sum > hd) break;
  }
  return count;
}

void main() {
  group("Fixed tests", () {
    test("save([4, 4, 4, 3, 3], 12)", () => expect(save([4, 4, 4, 3, 3], 12), equals(3)));
    test("save([4, 4, 4, 3, 3], 11)", () => expect(save([4, 4, 4, 3, 3], 11), equals(2)));
    test("save([4, 8, 15, 16, 23, 42], 108)", () => expect(save([4, 8, 15, 16, 23, 42], 108), equals(6)));
    test("save([13], 13)", () => expect(save([13], 13), equals(1)));
    test("save([1, 2, 3, 4], 250)", () => expect(save([1, 2, 3, 4], 250), equals(4)));
    test("save([100], 500)", () => expect(save([100], 500), equals(1)));
    test("save([11, 13, 15, 17, 19], 8)", () => expect(save([11, 13, 15, 17, 19], 8), equals(0)));
    test("save([45], 12)", () => expect(save([45], 12), equals(0)));
  });
}
