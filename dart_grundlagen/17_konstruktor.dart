
void main() {
  Car car1 = Car(color: "red", ps: 300);
}

class Car {
  Car({required this.color, required this.ps});

  final String color;
  final int ps;

  void drive() {
    print("car is moving");
  }
}
