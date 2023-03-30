abstract class Beverage {
  String description;
  bool milk;
  bool soy;
  bool mocha;
  bool whip;

  Beverage(this.description, this.milk, this.soy, this.mocha, this.whip);

  double cost() {
    double cost = 0;
    if (milk) cost += 5.5;
    if (soy) cost += 10.0;
    if (mocha) cost += 15;
    if (whip) cost += 13.5;

    return cost;
  }
}

class HouseBlend extends Beverage {
  HouseBlend(String description, bool milk, bool soy, bool mocha, bool whip)
      : super(description, milk, soy, mocha, whip);

  @override
  double cost() {
    return 10.0 + super.cost();
  }
}

class DarkRoastWithSoyAndWhip extends Beverage {
  DarkRoastWithSoyAndWhip(String description, bool milk, bool mocha)
      : super(description, milk, true, mocha, true);

  @override
  double cost() => 6 + super.cost();
}

//tea
class Tea extends Beverage {
  Tea(String description, bool soy, bool mocha, bool whip)
      : super(description, true, soy, mocha, whip);

  @override
  double cost() => 3 + super.cost();
}

void main() {
  Beverage houseBlend =
      HouseBlend('House blend coffee', false, false, false, false);
  print(houseBlend.description);
  print(houseBlend.cost());
  print('---------------------------------------------------');

  Beverage darkRoast =
      DarkRoastWithSoyAndWhip('DarkRoast with soy and whip', false, false);
  print(darkRoast.description);
  print(darkRoast.cost());
  print('---------------------------------------------------');
}












/// Inheritance fixes our problem, but not really
/// Now all of our subclasses are forced to implement methods they don't need e.g. tea
/// If we add new condiments, we have to change the parent class and update our cost method
/// Price changes means we will have to alter our existing code
/// This design heavily violates the open-closed principle
/// We are not extending on the logic, we have to modify it to cater for any changes
///
