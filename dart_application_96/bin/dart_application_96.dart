import "package:test/test.dart";
bool valid_spacing(String text) {
  if(text == "") return true;
  if(text[0] == " " || text[text.length - 1] == " ") return false;
  for(int i = 0 ; i < text.length - 1 ; i++){
    if(text[i] == " " && text[i+1] == " ") return false;
  }
  return true;
}

void main() {
  test("Sample tests", () {
  	expect(valid_spacing("Hello world"), equals(true));
  	expect(valid_spacing(" Hello world"), equals(false));
  	expect(valid_spacing("Hello world "), equals(false));
  	expect(valid_spacing("Hello"), equals(true));
  	expect(valid_spacing("Hello  world"), equals(false));
  	expect(valid_spacing("Helloworld"), equals(true));
  });
}
