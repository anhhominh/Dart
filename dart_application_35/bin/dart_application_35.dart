import "package:test/test.dart";
/*
Write a function partlist that gives all the ways to divide a list (an array) of at least two elements into two non-empty parts.
Each two non empty parts will be in a pair (or an array for languages without tuples or a structin C - C: see Examples test Cases - )
Each part will be in a string
Elements of a pair must be in the same order as in the original array.
*/
List<List<String>> partlist(List<String> arr) {
 List<List<String>> result = [];
  for (int i = 1; i < arr.length; i++) {
    result.add([
      arr.sublist(0,i).join(' '),
      arr.sublist(i).join(' ')
    ]);
  }
  return result;
}

void main() {
  void testing(arr, exp) {
    String str = arr.map((x) => "\"${x}\"").join(', ');
    test("Testing for [${str}]", () => expect(partlist(arr), equals(exp)));
  }
  group("Fixed tests", () {
    testing(["I", "wish", "I", "hadn't", "come"], [["I", "wish I hadn't come"], ["I wish", "I hadn't come"], ["I wish I", "hadn't come"], ["I wish I hadn't", "come"]]);
    testing(["cdIw", "tzIy", "xDu", "rThG"], [["cdIw", "tzIy xDu rThG"], ["cdIw tzIy", "xDu rThG"], ["cdIw tzIy xDu", "rThG"]]);
    testing(["vJQ", "anj", "mQDq", "sOZ"], [["vJQ", "anj mQDq sOZ"], ["vJQ anj", "mQDq sOZ"], ["vJQ anj mQDq", "sOZ"]]);
    testing(["mkC", "WoiP", "pCHh", "mkv"], [["mkC", "WoiP pCHh mkv"], ["mkC WoiP", "pCHh mkv"], ["mkC WoiP pCHh", "mkv"]]);
    testing(["vHW", "bPq", "pme", "jJr", "HGHV"], [["vHW", "bPq pme jJr HGHV"], ["vHW bPq", "pme jJr HGHV"], ["vHW bPq pme", "jJr HGHV"], ["vHW bPq pme jJr", "HGHV"]]);
    testing(["YZd", "ptUD", "IXr"], [["YZd", "ptUD IXr"], ["YZd ptUD", "IXr"]]);
    testing(["dOXj", "nMlK", "QGT", "LSt", "BHNR"], [["dOXj", "nMlK QGT LSt BHNR"], ["dOXj nMlK", "QGT LSt BHNR"], ["dOXj nMlK QGT", "LSt BHNR"], ["dOXj nMlK QGT LSt", "BHNR"]]);
    testing(["UQB", "aIfC", "eVB", "aCL", "bWoU"], [["UQB", "aIfC eVB aCL bWoU"], ["UQB aIfC", "eVB aCL bWoU"], ["UQB aIfC eVB", "aCL bWoU"], ["UQB aIfC eVB aCL", "bWoU"]]);
    testing(["Pimt", "qxEm", "enzX", "Luk", "Smi"], [["Pimt", "qxEm enzX Luk Smi"], ["Pimt qxEm", "enzX Luk Smi"], ["Pimt qxEm enzX", "Luk Smi"], ["Pimt qxEm enzX Luk", "Smi"]]);
    testing(["CyAg", "zzWg", "ZZuR", "wbpx", "mYr"], [["CyAg", "zzWg ZZuR wbpx mYr"], ["CyAg zzWg", "ZZuR wbpx mYr"], ["CyAg zzWg ZZuR", "wbpx mYr"], ["CyAg zzWg ZZuR wbpx", "mYr"]]);
    testing(["Epb", "yTcb", "njU"], [["Epb", "yTcb njU"], ["Epb yTcb", "njU"]]);
  });
}