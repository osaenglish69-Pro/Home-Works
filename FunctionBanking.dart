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
        print("Enter the number to deposite : ");
        String? input2 = stdin.readLineSync();
       double op = double.parse(input2!);
       Deposite(op);
       break;
      case 3:
        print("Enter the number to withdraw : ");
        String? input2 = stdin.readLineSync();
        double op = double.parse(input2!);
        withdraw(op);
        break;
        default:
          print("");
    }
  }
}
Deposite(double value){

  if(value > 1) {
    balance = balance + value;
  }
  else{
    print("Failed to deposite !!!");
  }
}
withdraw(double value){


  if(value >= 1 && times <= 3 && sum < 120000) {
    sum = sum + value;
    balance = balance - value;
    print(times);
    print(sum);
      times++;


  }
  else{
    print("Failed to withdraw !!!");
  }

}

showBalance(){
  print("The Balance : ${balance}");
}
