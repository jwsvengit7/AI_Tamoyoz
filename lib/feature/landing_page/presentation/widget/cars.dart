import 'package:ai_tamayoz/gen/assets.gen.dart';

class CarVendors {
  final String name;
  final String icon;

  CarVendors({required this.name, required this.icon});
}

class CarType {
  final String name;
  final String icon;

  CarType({required this.name, required this.icon});
}
class Car {
  final String name;
  final String icon;
  final String kilometer;
  final double price;

  Car({required this.kilometer,required this.price,required this.name, required this.icon});
}

 final List<CarVendors> carsVendors = [
    CarVendors(name: 'Add Car', icon: Assets.images.car1.path),
    CarVendors(name: 'Inquiry Car', icon: Assets.images.car3.path),
    CarVendors(name: 'Car Services', icon: Assets.images.car2.path),
  ];


   final List<CarType> carsBrand = [
    CarType(name: 'Car 1', icon: Assets.images.a1200pxMINILogo1.path),
    CarType(name: 'Car 1', icon: Assets.images.hondaLogo1.path),
    CarType(name: 'Car 1', icon: Assets.images.jeepLogo1.path),
    CarType(name: 'Car 1', icon: Assets.images.mercedesLogo1.path),
    CarType(name: 'Car 1', icon: Assets.images.teslaTSymbol1.path),
    CarType(name: 'Car 1', icon: Assets.images.hondaLogo1.path),
  ];
     final List<Car> cars = [
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.benWhitaker.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.benWhitaker.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.benWhitaker.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.benWhitaker.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.benWhitaker.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.benWhitaker.path,price:1.0,kilometer:"8,750 KWD"),
  ];