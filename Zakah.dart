import 'dart:io';

void main(){
  print("Enter the Your Income : ");
  String? amount = stdin.readLineSync();
  double income = double.parse(amount!);
  print("Enter the numbers of months  : ");
  String? months = stdin.readLineSync();
  int monthsNumber  =int.parse(months!);
  double zakah =0;
  double value = 0;
  String percent = "12%";
  if(income <=0 || monthsNumber <=0){
    print("wrong inputs !!!");
  }
  else  if(income >=955000 && monthsNumber >=12){
    value = income * 0.88;
    zakah = income - value;
  }
  else{
    print("No Zakah");
  }

  print("Your income is : ${income}");
  print("Your Zakah is : ${zakah} (${percent})");
  print("Your the rest is : ${value}");
}
