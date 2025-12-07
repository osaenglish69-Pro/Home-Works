class Car{
  int _carId;
  String _carName;
  bool _carType;
  double _carPrice;
  double _discount;
  double? _totalPrice;

  Car(this._carId, this._carName, this._carType, this._carPrice, this._discount,
      );

  double get discount => _discount;

  set discount(double value) {
    _discount = value;
  }

  double get carPrice => _carPrice;

  set carPrice(double value) {
    _carPrice = value;
  }

  bool get carType => _carType;

  carType1() {
    if(_carType = true) {
      return "the car is Electric";
    }
    else{
      return "the car is traditional";
    }
  }
  set carType(bool value) {

    _carType = value;
  }

  String get carName => _carName;

  set carName(String value) {
    _carName = value;
  }

  int get carId => _carId;

  set carId(int value) {
    _carId = value;
  }
  double get totalPrice => _totalPrice=_carPrice * _discount;

  set totalPrice(double value) {
    _totalPrice = value;
  }
  getCarInfo(){
    print("the Car id is : ${carId} ");
    print("the Car name is : ${carName} ");
    print("the Car type is : ${carType1()}");
    print("the Car price is : ${carPrice} ");
    print("the Car discount is : ${discount} ");
    print("the Car total is :  ${totalPrice}");
  }
}
void main(){
  Car car = Car(12, "Tesla", true, 120000, 0.85);
  car.carName="luxses";
  car.getCarInfo();

}