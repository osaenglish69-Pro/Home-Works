import 'dart:io';
void main(){
  int num2= 1;
  print("1-Odd Even validation \n2-Age validation\n3-Food validation \n4-Password validation"
      "\n5-Month numbers\n6-Months Seasons\n7-Calculator   \n0-end the program");
  while(num2 !=0){
    print("choose the number : ");
  String? input = stdin.readLineSync();
  num2=int.parse(input!);
  switch(num2){
    case 1:
      print("Enter the number : ");
      String? input2 = stdin.readLineSync();
      int num = int.parse(input2!);
  if(num % 2 == 0 ){
  print("Even");
  }
  else if(num <= 0){
  print("wrong number  !!!!");
  }
  else{
  print("Odd");
  }
  break;
    case 2:
      print("Enter the age : ");
      String? input2 = stdin.readLineSync();
      int num = int.parse(input2!);
      if(num >= 18){
        print("older than 18");
      }
      else if(num <= 0){
        print("wrong number  !!!!");
      }
      else{
        print("smaller than 18");
      }
    case 3:
      print("Enter the food : ");
      String? food = stdin.readLineSync();
      if(food == "pizza"){
        print("pizza");
      }
      else if(food == "burger"){
        print("burger");
      }
      else if(food == "sandwich"){
        print("sandwich");
      }
      else{
        print("unknown food");
      }
      break;
    case 4:
      print("Enter the password : ");
      String? pass = stdin.readLineSync();
      print("Enter the password again : ");
      String? pass2= stdin.readLineSync();
      if(pass == pass2){
        print("Match");
      }
      else{
        print("Not match");
      }
      break;
    case 5:
      Map<int , String> months = {
        1:'january',
        2:'february',
        3:'march',
        4:'april',
        5:'may',
        6:'june',
        7:'july',
        8:'august',
        9:'september',
        10:'october',
        11:'november',
        12:'december'
      };
      print("1-Display Months \n2-Search by number");
      String? input2 = stdin.readLineSync();
      int num = int.parse(input2!);
      switch(num){
        case 1:
          months.forEach((k,v){
            print('${k} : ${v} ');
          });
          break;
        case 2:
          print("Enter the month nuumber to search : ");
          String? searchNumber = stdin.readLineSync();
          int num = int.parse(searchNumber!);
          if(months.containsKey(num)){
         String? m=  months[num];
          print("${num} : ${m}");
          }
          else{
            print("nothing found");
          }
          break;
          default:
            print("wrong Entery");
      }
      break;
    case 6:
      print("Please enter the month number (1-12): ");
      String? input = stdin.readLineSync();

        int monthNumber = int.parse(input!);

        String season;

        switch (monthNumber) {
          case 1:
          case 2:
          case 12:
            season = "Winter";
            break;

          case 3:
          case 4:
          case 5:
            season = "Spring";
            break;

          case 6:
          case 7:
          case 8:
            season = "Summer";
            break;

          case 9:
          case 10:
          case 11:
            season = "Autumn/Fall";
            break;

          default:
            print("Please enter a number between 1 and 12 only");
            return;
        }
        print("Month: $monthNumber");
        print("Season: $season");
      break;
    case 7:
      bool con = true;
      print("\nAvailable Operations:");
      print("1. Addition (+)");
      print("2. Subtraction (-)");
      print("3. Multiplication (*)");
      print("4. Division (/)");
      print("5. Exit");

      while (con) {

        print("\nChoose operation (1-5): ");
        String? choiceInput = stdin.readLineSync();

        if (choiceInput == "5") {
          print("Thank you for using the calculator.");
          con = false;
          break;
        }


        int choice = int.parse(choiceInput!);

        if (choice < 1 || choice > 4) {
          print("Invalid choice. Please select 1-5.");
          continue;
        }

        // Get numbers from user
        print("Enter first number: ");
        double num1 = double.parse(stdin.readLineSync()!);

        print("Enter second number: ");
        double num2 = double.parse(stdin.readLineSync()!);

        double result;
        String operationSymbol;

        switch (choice) {
          case 1:
            result = num1 + num2;
            operationSymbol = "+";
            break;

          case 2:
            result = num1 - num2;
            operationSymbol = "-";
            break;

          case 3:
            result = num1 * num2;
            operationSymbol = "*";
            break;

          case 4:
            if (num2 == 0) {
              print("Error: Division by zero is not allowed!");
              continue;
            }
            result = num1 / num2;
            operationSymbol = "/";
            break;

          default:
            print("Invalid operation");
            continue;
        }

        print("RESULT:");
        print("$num1 $operationSymbol $num2 = $result");
      }

      break;
      }

}
print("Program has ended");
}