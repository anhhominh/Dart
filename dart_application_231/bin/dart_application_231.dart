import "package:test/test.dart";
int factors(n){
  int prime_factors = 0; 
	int prime = 2;
	while (prime*prime <= n){
    	while (n % prime == 0){
        prime_factors += 1;
        n ~/= prime;
      }
			prime += 1;   
  } 
  if (n > 1){
        prime_factors += 1;
      }  
	return prime_factors;
}



List<int> countKprimes(int k, int start, int end) {
  List<int> result = [];
	for (int i = start ; i < end + 1 ; i++){
    	if (factors(i) == k){
        	result.add(i);
      }
  }
	return result;
}
int puzzle(int s) {
  List<int> a = countKprimes(1, 0, s);
	List<int> b = countKprimes(3, 0, s);
	List<int> c = countKprimes(7, 0, s);
  int sum = 0;
  for (int x in a){
     for (int y in b){
      for (int z in c){
        if (x + y + z == s) sum++;
      }
     }
  } 
  return sum;
}

void main() {
  testing1(int k, int start, int limit, List<int> exp) => 
    test("Testing for $k $start $limit", () => 
      expect(countKprimes(k, start, limit), equals(exp)));
  testing2(int s, int exp) => 
    test("Testing for $s", () => 
      expect(puzzle(s), equals(exp)));
  
  group("fixed tests countKprimes", () {
    testing1(5, 1000, 1100, [1020, 1026, 1032, 1044, 1050, 1053, 1064, 1072, 1092, 1100]);
    testing1(5, 500, 600, [500, 520, 552, 567, 588, 592, 594]);
    testing1(7, 1000, 1500, [1008, 1056, 1080, 1088, 1120, 1200, 1216, 1248, 1458, 1472]);
  
  });
  group("fixed tests puzzle", () {
    testing2(100, 0);
    testing2(151, 3);
  });
}
