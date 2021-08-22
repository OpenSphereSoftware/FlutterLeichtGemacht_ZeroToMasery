void main() {
  Car car1 = Car();
  car1.setColor = "rot";

  Car car2 = Car();
  car2.setColor = "blau";

  String colorFromCar = car1.color;

  car1.sayColor();
  car2.sayColor();

  car1.drive();
}

class Car {
  //! setter - kontrolliertes setzten des ertes
  set setColor(String color) {
    // platz für validierungen
    this._color = color;
  }

  //! getter
  String get color => this._color; // kurzschreibweise =>
  /* String get clolor {
    platz für validierungen
    return this.color;
  }*/

  //! attribute
  late String _color; // late -> weise später einen wert zu



  //! methoden
  void drive() {
    _legeGangEin();
    print("car is moving");
  }

  void _legeGangEin() {
    print("Gang 1");
  }

  void sayColor() {
    print(this._color);
  }
}
