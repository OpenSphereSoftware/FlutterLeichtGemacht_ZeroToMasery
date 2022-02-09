
void main() {
  Car car1 = Car();
  car1.color = "rot";

  Car car2 = Car();
  car2.color = "blau";

  car1.sayColor();
  car2.sayColor();

  car1.drive();
}

class Car {
  //! attribute
  late String color;

  //! methoden
  void drive() {
    print("car is moving");
  }

  void sayColor() {
    print(this.color);
  }
}
