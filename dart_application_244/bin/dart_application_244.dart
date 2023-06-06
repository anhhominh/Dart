import "package:test/test.dart";

String getTriangle(int width) {
  List<String> lines = new List<String>();
  for (int i=0; i*2<width; i++) lines.add((' '*i) + '/' + ((i == 0 ? '_' : ' ')*(width-2*i)) + '\\');
  if (width>0) lines.add((' ' * ((width+1) ~/ 2)) + (width % 2 == 1 ? "^" : "/\\"));
  return lines.reversed.join('\n');
}

void main() {
  test('Returns empty string if width is 0', () {
    expect(getTriangle(0), '');
  });
  
  test('Returns a triangle with a width of 1', () {
    expect(getTriangle(1), r'''
 ^
/_\''');
  });
  
  test('Returns a triangle with a width of 2', () {
    expect(getTriangle(2), r'''
 /\
/__\''');
  });
      
  test('Returns a triangle with a width of 3', () {
    expect(getTriangle(3), r'''
  ^
 / \
/___\''');
  });
      
  test('Returns a triangle with a width of 4', () {
    expect(getTriangle(4), r'''
  /\
 /  \
/____\''');
  });
        
  test('Returns a triangle with a width of 5', () {
    expect(getTriangle(5), r'''
   ^
  / \
 /   \
/_____\''');
  });
     
  test('Returns a triangle with a width of 6', () {
    expect(getTriangle(6), r'''
   /\
  /  \
 /    \
/______\''');
  });
}
