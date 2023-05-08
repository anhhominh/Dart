import "package:test/test.dart";

int find(List integers) {
  List<int> odd = [];
  List<int> even = [];
  for(int i = 0 ; i < integers.length ; i++){
    if(integers[i] % 2 == 0) even.add(integers[i]);
    else odd.add(integers[i]);
  }
  return even.length == 1 ? even[0] : odd[0];
}

void main() {
  test('Example test 1', () { expect(find([99,77,331,717,89,22073,8,7,101]), equals(8)); });
  test('Example test 2', () { expect(find([2254,29,98427000020]), equals(29)); });
}
