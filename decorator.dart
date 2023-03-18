/// main objective is to extend behaviour, without changing any of our parent classes
/// we want to be able to extend this behaviour anytime, dynamically at runtime
///
///
///
/// Component
abstract class Beverage {
  String description = 'Unknown beverage';
  double cost();
}

// Our two Concrete components
class HouseBlend extends Beverage {
  HouseBlend() {
    description = "House blend Coffee";
  }

  @override
  double cost() {
    return 20;
  }
}

class DarkRoast extends Beverage {
  DarkRoast() {
    description = "Dark roast Coffee";
  }

  @override
  double cost() {
    return 25;
  }
}

//Condiments decorator
abstract class CondimentDecorator extends Beverage {
  late Beverage beverage;
}

//Concrete decorators
class Soy extends CondimentDecorator {
  Soy(Beverage beverage) {
    this.beverage = beverage;
    this.description = '${beverage.description}, Soy';
  }

  @override
  double cost() {
    return beverage.cost() + 15;
  }
}

class Whip extends CondimentDecorator {
  Whip(Beverage beverage) {
    this.beverage = beverage;
    this.description = '${beverage.description}, Whip';
  }

  @override
  double cost() {
    return beverage.cost() + 20;
  }
}

void main() {
  Beverage darkRoast = DarkRoast();
  print(darkRoast.description);
  print(darkRoast.cost());
  print('-----------------------------------------');

  Beverage darkRoastWithWhipAndSoy = Soy(darkRoast);
  darkRoastWithWhipAndSoy = Whip(darkRoastWithWhipAndSoy);
  print(darkRoastWithWhipAndSoy.description);
  print(darkRoastWithWhipAndSoy.cost());
  print('-----------------------------------------');

  Beverage houseBlend = HouseBlend();
  houseBlend = Whip(houseBlend);
  print(houseBlend.description);
  print(houseBlend.cost());
  print('-----------------------------------------');
}
