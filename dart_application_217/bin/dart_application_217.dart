import "package:test/test.dart";

String histogram(List<int> results) {
  List<String> str = [];
  for(int i = 0 ; i < results.length ; i++){
    String tmp = "";
      for(int j = 0 ; j < results[i] ; j++){
        tmp = tmp + "#";
      }
    if(results[i] > 0){
     str.add("${i+1}|${tmp} ${results[i]}\n"); 
    } else {
      str.add("${i+1}|${tmp}\n");
    }
    
  }
 // print(str.reversed);
  return str.reversed.join();
}

void main() {
  String shw(List<int> results) {
    print(results);
    String hist = histogram(results);
    print(hist);
    return hist;
  }
  group("tests", () {
    test("Basic test", () {
      String expected = 
        "6|##### 5\n" +
        "5|\n" +
        "4|# 1\n" +
        "3|########## 10\n" +
        "2|### 3\n" +
        "1|####### 7\n";
      expect(shw([7, 3, 10, 1, 0, 5]), equals(expected));
    });
    test("Zero test", () {
      String expected = 
        "6|\n" +
        "5|\n" +
        "4|\n" +
        "3|\n" +
        "2|\n" +
        "1|\n";
      expect(shw([0, 0, 0, 0, 0, 0]), equals(expected));   
    });
  });
}
