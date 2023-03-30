abstract class Beverage {
  String description = 'Unknown beverage';
  double cost();
}

class HouseBlend extends Beverage {
  HouseBlend() {
    description = "House blend coffee";
  }

  @override
  double cost() {
    return 15.0;
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

class Espresso extends Beverage {
  Espresso() {
    this.description = "Esspresso";
  }

  @override
  double cost() {
    return 18.5;
  }
}

void main(List<String> args) {
  Beverage espresso = Espresso();
  print(espresso.description);
  print(espresso.cost());
  print('------------------------------------');

  Beverage darkRoast = DarkRoast();
  print(darkRoast.description);
  print(darkRoast.cost());
  print('------------------------------------');
}






/// Seems good enough
/// But remember requirements aways change
/// For every coffee, you can add condiments
/// Now we need to cater for more types of coffees, and we need to create a new class for every new type of coffee
/// This leads to class explosion, because we need to create a new class when we get a new requirement
/// e.g. DarkRoastWithSteamedMilkWhipAndSoySauce
/// If any of the condiment prices change, any coffee that adds this condiment would have to be updated e.g. milk is now R6
///