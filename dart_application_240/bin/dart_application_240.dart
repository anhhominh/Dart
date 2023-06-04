import "package:test/test.dart";

List<int> annKatas = [1], johnKatas = [0];

int upToDayDay(n){
  int day = annKatas.length;
  while (day < n) {
    johnKatas.add(day - annKatas[johnKatas[day-1]]);
    annKatas.add(day - johnKatas[annKatas[day-1]]);
    day++;
  }
  return n;
}

List<int> john(int n) {
  List<int> ans = [];
  for(int i = 0 ; i < upToDayDay(n) ; i++){
    ans.add(johnKatas[i]);
  }
    return ans;
}
int sumJohn(int n) {
    return john(n).reduce((x, y) => x + y);
}
List<int> ann(int n) {
  List<int> ans = [];
  for(int i = 0 ; i < upToDayDay(n) ; i++){
    ans.add(annKatas[i]);
  }
    return ans;
}
int sumAnn(int n) {
    return ann(n).reduce((x, y) => x + y);
}

void main() {
  testJohn(int n, List<int> exp) => 
    test("Testing for $n", () => 
      expect(john(n), equals(exp)));
  group("fixed tests john", () {
    testJohn(11, [0, 0, 1, 2, 2, 3, 4, 4, 5, 6, 6]);
    testJohn(14, [0, 0, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 7, 8]);
    
  });
  
  testAnn(int n, List<int> exp) => 
    test("Testing for $n", () => 
      expect(ann(n), equals(exp)));
  group("fixed tests ann", () {
    testAnn(6, [1, 1, 2, 2, 3, 3]);
    
  });
  
  testSumJohn(int n, int exp) => 
    test("Testing sumJohn for $n", () => 
      expect(sumJohn(n), equals(exp)));
  group("fixed tests sumJohn", () {
    testSumJohn(75, 1720);
    testSumJohn(78, 1861);
    
  });
  
  testSumAnn(int n, int exp) => 
    test("Testing sumAnn for $n", () => 
      expect(sumAnn(n), equals(exp)));
  group("fixed tests sumAnn", () {
    testSumAnn(115, 4070);
    testSumAnn(150, 6930);
      
  });
}
