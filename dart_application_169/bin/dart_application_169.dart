import "package:test/test.dart";
import "dart:math";
int movie(int card, int ticket, double perc) {
  var counter = 0;
  dynamic t = ticket;
  dynamic acc = card;
  int price = 0;
  while (price <= acc.ceil()) {
    acc += (t * perc);
    t *= perc;
    price += ticket;
    counter += 1;
  }
  return counter;
}

void main() {
  group('Basic tests', () {
    test("movie(500, 15, 0.9)", () => expect(movie(500, 15, 0.9), equals(43)));
    test("movie(100, 10, 0.95)", () => expect(movie(100, 10, 0.95), equals(24)));
    test("movie(0, 10, 0.95)", () => expect(movie(0, 10, 0.95), equals(2)));
    test("movie(250, 20, 0.9)", () => expect(movie(250, 20, 0.9), equals(21)));
    test("movie(500, 20, 0.9)", () => expect(movie(500, 20, 0.9), equals(34)));
    test("movie(2500, 20, 0.9)", () => expect(movie(2500, 20, 0.9), equals(135)));
  });
}