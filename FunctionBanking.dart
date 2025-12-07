import 'dart:io';


double balance = 1000000;
int times=1;
double sum=0;
main(){
  double opeartions= 1;
  while(opeartions != 4 ) {
    print("1-Show Balance\n2-Depsoite \n3-Withdraw\n4-Exit\nchoose operation : ");
    String? input = stdin.readLineSync();
    opeartions = double.parse(input!);
    switch(opeartions){
      case 1:
        showBalance();
        break;
      case 2:
       Deposite();
       break;
      case 3:
        withdraw();
        break;
        default:
          print("");
    }
  }
}
Deposite(){
  print("="*30);
  print("Enter the number to deposite : ");
  String? input2 = stdin.readLineSync();
  double value=  double.parse(input2!);
  if(value > 1) {
    balance = balance + value;
    print("the operation is executed successfully ");
    print("="*30);
  }
  else{
    print("Failed to deposite !!!");
    print("="*30);
  }
}
withdraw(){
  print("="*30);
  print("Enter the number to withdraw : ");
  String? input2 = stdin.readLineSync();
  double value=  double.parse(input2!);
  if(sum >= 120000){
    print("you have already reached the max limit : 120000 ");
    print("="*30);
  }
  else if(times > 3){
    print("you have already reached : 3 times");
    print("="*30);
  }
 else if(value >= 1 && times <= 3 && sum < 120000) {
    sum = sum + value;
    balance = balance - value;
    print("times : ${times}");
    print("today withdraw is   : ${sum}");
    print("="*30);
      times++;

  }
  else{
    print("Failed to withdraw !!!");
    print("="*30);
  }

}

showBalance(){
  print("="*30);
  print("The Balance : ${balance}");
  print("="*30);
}
