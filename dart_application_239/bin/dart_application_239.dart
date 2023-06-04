import "package:test/test.dart";

String getOrder(String input) {
  String x = "";
  List code = ['Burger' ,'Fries' ,'Chicken' ,'Pizza' ,'Sandwich','Onionrings' ,'Milkshake', 'Coke'];
    for (var i in code) {
      x += (i + " ") * (input.split(i.toLowerCase()).length-1);
    }
  return x.trim();
}

void main() {
  group("Solution", () {
    test("Fixed Tests", () {
      expect(getOrder("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"), equals("Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"));
      expect(getOrder("pizzachickenfriesburgercokemilkshakefriessandwich"), equals("Burger Fries Fries Chicken Pizza Sandwich Milkshake Coke"));
      expect(getOrder("burgerfriesfriesfriesfriesfriespizzasandwichcokefriesburger"), equals("Burger Burger Fries Fries Fries Fries Fries Fries Pizza Sandwich Coke"));
    });
  });
}
