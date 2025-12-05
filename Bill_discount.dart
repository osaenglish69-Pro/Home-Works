import 'dart:io';
void main(){
  print("Enter the price  : ");
  String? input = stdin.readLineSync();
  double totalPrice = double.parse(input!);
  var percent  , discount,price;
  if(totalPrice >= 20000){
    price = totalPrice * 0.88;
    discount = totalPrice - price;
  }
 else if(totalPrice >= 10000){
    price = totalPrice * 0.93;
    discount = totalPrice - price;
  }
 else{
   print("no discount");
   exit(0);
  }
 percent = "${((discount/totalPrice)*100).toInt()}%";
 print("the total price is : ${totalPrice}\n the discount is  ${discount} (${percent})\n the price is : ${price}");

}




