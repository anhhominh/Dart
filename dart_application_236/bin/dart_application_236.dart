import 'dart:convert';
import 'package:crypto/crypto.dart';
import "package:test/test.dart";
crack(hash){
  for(int i = 0 ; i < 100000 ; i++){
    var password = i.toString().padLeft(5,'0');
    if (md5.convert(utf8.encode(password)).toString() == hash) {
      return password;
    }
  }
}

void main() {
  test('Simple test', () {
    expect(crack("827ccb0eea8a706c4c34a16891f84e7b"), equals("12345"));
  });
  test('Harder test', () {
    expect(crack("86aa400b65433b608a9db30070ec60cd"), equals("00078"));
  });
}