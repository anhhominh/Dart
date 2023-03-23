import "package:test/test.dart";

int minimumSteps(List<int> nums, int value) {
  nums.sort();
  int sum = nums[0];
  int dem = 0;
  bool check = false;
  if(nums[0] > value) return 0;
  for(int i = 1 ; i < nums.length ; i++){
    sum = sum + nums[i];
    dem++;
    if(sum >= value){
      check = true;
      break;
    }
    if(check == true) break;
  }
  return dem;
}

void main() {
  group("Fixed tests", () {
    test("minimumSteps([4, 6, 3], 7)", () {
      expect(minimumSteps([4, 6, 3], 7), equals(1));
    });
    test("minimumSteps([1, 10, 12, 9, 2, 3], 6)", () {
      expect(minimumSteps([1, 10, 12, 9, 2, 3], 6), equals(2));
    });
    test("minimumSteps([10, 9, 9, 8], 17)", () {
      expect(minimumSteps([10, 9, 9, 8], 17), equals(1));
    });
    test("minimumSteps([8, 9, 10, 4, 2], 23)", () {
      expect(minimumSteps([8, 9, 10, 4, 2], 23), equals(3));
    });
    test("minimumSteps([19, 98, 69, 28, 75, 45, 17, 98, 67], 464)", () {
      expect(minimumSteps([19, 98, 69, 28, 75, 45, 17, 98, 67], 464), equals(8));
    });
    test("minimumSteps([4, 6, 3], 2)", () {
      expect(minimumSteps([4, 6, 3], 2), equals(0));
    });
  });
}