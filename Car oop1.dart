import 'dart:io';

class Car{
  String brand;
  int year;
  bool isElectric;
  double price;
  int passengerCapacity;

  Car(this.brand, this.year, this.isElectric, this.price,
      this.passengerCapacity);

  checkElectric(){
    if(isElectric == false ){
     print("the car is traditional car ");
    }
    else if(isElectric == true) {
      print("the car is traditional car ");
    }
    else
      print("wrong input !!");

  }

checkYear(){
  if(year  >= 1980 || year <= 2025){
    return "the date is correct ";
  }
  else{
   return "the date is not correct ";
  }
}
calculateMaintenanceCost(){
  double cost = price * 0.90;
  print("the fixing cost  : ${cost}");
}
carInfo(){
  print("car brand is  : ${brand}");
  print("car year is  : ${year} => ${checkYear()}" );
  checkElectric();
  print("car price is  : ${price}");
  print("car passengerCapacity is  : ${passengerCapacity}");
  calculateMaintenanceCost();
}
}
void main(){
  var year,isElectric,price,capacity,num;
  print("1-ready data\n2-Entering data by user\nchoose number : ");
  String? innum= stdin.readLineSync();
  num = int.parse(innum!);
  switch(num){
    case 1:
 Car car = Car("Handi", 2003, true, 2000000, 4);
 car.checkElectric();
 car.checkYear();
 car.calculateMaintenanceCost();
 car.carInfo();
 break;
 case 2:
  print("Enter the brand : ");
  String? input = stdin.readLineSync();
  print("Enter the Year  : ");
  String? input2 = stdin.readLineSync();
  year =int.parse(input2!);
  print("Enter the type traditional => false\nElectric => true  : ");
  String? input3 = stdin.readLineSync();
  isElectric = bool.parse(input3!);
  print("Enter the price  : ");
  String? input4 = stdin.readLineSync();
  price = double.parse(input4!);
  print("Enter the  capacity : ");
  String? input5 = stdin.readLineSync();
  capacity = int.parse(input5!);
  Car carbyuser = Car(input!, year, isElectric, price, capacity);
  carbyuser.checkElectric();
  carbyuser.checkYear();
  carbyuser.calculateMaintenanceCost();
  carbyuser.carInfo();
  break;
  default:
    print("");
  }
}