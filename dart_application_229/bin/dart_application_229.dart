import "package:test/test.dart";
import "package:solution/solution.dart";

String longestConsec(strarr, k) {
  String current = '';
  for (int i = 0; i < strarr.length - k + 1; ++i) {
    String temp = '';
    for (int j = 0; j < k; ++j) {
      temp += strarr[i+j];
    }
    if (temp.length > current.length) {
      current = temp;
    }
  }
  return current;
}

void main() {
  group("Basic tests", () {
    testing(["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta");
    testing(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1, "oocccffuucccjjjkkkjyyyeehh");
    testing([], 3, "");
    testing(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2, "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck");
    testing(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2, "wlwsasphmxxowiaxujylentrklctozmymu");
    testing(["zone", "abigail", "theta", "form", "libe", "zas"], -2, "");
    testing(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3, "ixoyx3452zzzzzzzzzzzz");
    testing(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15, "");
    testing(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0, "");
  });
}
