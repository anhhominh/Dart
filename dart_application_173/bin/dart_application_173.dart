import "package:test/test.dart";

List josephus(final List items, final int k) {
  var a = items;
  List  ans = [];
  var  i = 0;
    while (a.length > 0){
      var j = (i + k - 1) % a.length;
      ans.add(a[j]);
      a.removeAt(j);
      if(j < a.length) i = j;
      else i = 0;
    }
    return ans;
}

void main() {
  group("Sample Tests", () {
    test("Should return the same exact list if k==1", () => expect(josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1), equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])));
    test("Testing for josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2)", () => expect(josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2), equals([2, 4, 6, 8, 10, 3, 7, 1, 9, 5])));
    test("Should work vor values different from numbers too", () => expect(josephus(['C', 'o', 'd', 'e', 'W', 'a', 'r', 's'], 4), equals(['e', 's', 'W', 'o', 'C', 'd', 'r', 'a'])));
    test("Testing for josephus([1, 2, 3, 4, 5, 6, 7], 3)", () => expect(josephus([1, 2, 3, 4, 5, 6, 7], 3), equals([3, 6, 2, 7, 5, 1, 4])));
    test("Should work for empty arrays too", () => expect(josephus([], 3), equals([])));
  });
}
