import "package:test/test.dart";

List<int> fifo(int n, List<int> referenceList) {
  final pages = List<int>.filled(n, -1);
  var pos = 0;
  
  for(var val in referenceList) {
    if(!pages.contains(val)) {
      pages[pos++] = val;
      pos %= n;
    }
  }
  
  return pages;
}

void main() {
  group("Basic Tests", () {
    
    test("Basic Tests", () {
      List<List<int>> referenceLists = [
        [1, 2, 3, 4, 2, 5],
        [],
        [1, 2, 3, 3, 4, 5, 1],
        [1, 1, 1, 2, 2, 3],
        [5, 4, 3, 3, 4, 10],
        [1, 1, 1, 1, 1, 1, 1, 1],
        [10, 9, 8, 7, 7, 8, 7, 6, 5, 4, 3, 4, 3, 4, 5, 6, 5]
      ];
    
      List<List<int>> expectedLists = [
        [4, 5, 3],
        [-1, -1, -1, -1, -1],
        [5, 1, 3, 4],
        [1, 2, 3, -1],
        [10],
        [1, -1, -1],
        [5, 4, 3, 7, 6]
      ];
      
      List<int> ns = [3, 5, 4, 4, 1, 3, 5];
      
      for (int i = 0; i < referenceLists.length; i++) {
        expect(fifo(ns[i], [...referenceLists[i]]), equals(expectedLists[i]), reason: "N = ${ns[i]}, REFERENCE LIST = ${referenceLists[i].toString()}");
      }
    });
  });
}
