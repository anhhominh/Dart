import "package:test/test.dart";

String code(String s) {
  String bin = '';
  for(int i = s.length - 1; i >= 0 ; i--) {
    String binStr = int.parse(s[i]).toRadixString(2);
    bin = ('0' * (binStr.length - 1)) + '1' + binStr + bin;
  }
  return bin;
}

String decode(String str) {
  String dec = '';
  for(int i = 0, len = 1; i < str.length; i++, len++) {
    if(str[i] != '1') continue;
    int end = ++i + len;
    dec += int.parse(str.substring(i, end), radix: 2).toString();
    len = 0;
    i = end - 1;
  }
  return dec;
}

void main() {
  dotestCode(String s, exp) {
    test("Testing code for: \n$s \n", () =>
      expect(code(s), equals(exp)));
  }
  dotestDecode(String s, exp) {
      test("Testing decode for: \n$s \n", () =>
        expect(decode(s), equals(exp)));
  }
  group("fixed tests code", () {
    dotestCode("62", "0011100110");
    dotestCode("55337700", "001101001101011101110011110011111010");
    dotestCode("1119441933000055", "1111110001100100110000110011000110010111011110101010001101001101");
    dotestCode("69", "00111000011001");
    dotestCode("86", "00011000001110");
    
  });
  group("fixed tests decode", () {
    dotestDecode("10001111", "07");
    dotestDecode("001100001100001100001110001110001110011101110111001110001110001110001111001111001111001100001100001100", "444666333666777444");
    dotestDecode("01110111110001100100011000000110000011110011110111011100110000110001100110", "33198877334422");
    dotestDecode("001100001101", "45");
    dotestDecode("1111110001100100111000111001110111001110001110", "1119663366");
    
  });
}
