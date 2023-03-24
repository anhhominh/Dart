import 'dart:math' as math;
import "package:test/test.dart";

bool areListsEqual(var list1, var list2) {
    if(!(list1 is List && list2 is List)|| list1.length!=list2.length) {
        return false;
    }
    for(int i=0;i<list1.length;i++) {
        if(list1[i]!=list2[i]) {
            return false;
        }
    } 
    return true;
}
bool comp(List<int> a1, List<int> a2) {
  bool check = false;
  List<int> doubleA1 = [];
  a1.forEach((e){
    int tmp = e*e;
    doubleA1.add(tmp);
  });
  a2.sort();
  doubleA1.sort();
  return areListsEqual(a2,doubleA1);
}

void main() {
  dotest(List<int> a1, List<int> a2, bool exp) {
    test("Testing for $a1: $a2:", () =>
      expect(comp(a1, a2), equals(exp)));
  }
  group("fixed tests", () {
    var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
    var a2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
    dotest(a1, a2, true);
    a1 = [121, 144, 19, 161, 19, 144, 19, 11];
    a2 = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
    dotest(a1, a2, false);
    
  });
}