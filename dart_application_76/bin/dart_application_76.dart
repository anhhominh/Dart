import "package:test/test.dart";
import "dart:math";

String anchorize(String text){
  return text.replaceAllMapped(new RegExp(r'(http[s]?|ftp[s]?|smb|file):\/\/\S+', caseSensitive: false), (match) {
    return '<a href="${match.group(0)}">${match.group(0)}</a>';
  });
}

void main() {
  group("Anchorize me", () {
    test('Basic test set!', () {
      expect('<xmp>'+anchorize('hello http://world.com !')+'</xmp>',
      equals('<xmp>'+'hello <a href="http://world.com">http://world.com</a> !'+'</xmp>'));
      expect('<xmp>'+anchorize('Hello https://World.com')+'</xmp>',
      equals('<xmp>'+'Hello <a href="https://World.com">https://World.com</a>'+'</xmp>'));
      expect('<xmp>'+anchorize('Hello FTP://World.com')+'</xmp>',
      equals('<xmp>'+'Hello <a href="FTP://World.com">FTP://World.com</a>'+'</xmp>'));
    });
  });
}