import 'dart:io';
void main(){
  var name , subject1, subject2,subject3, mark;

  print("Enter the name ");
  String? input = stdin.readLineSync();

  print("Enter the subject1 : ");
  String? input2 = stdin.readLineSync();
  subject1 = int.parse(input2!);

  print("Enter the subject2  : ");
  String? input3 = stdin.readLineSync();
  subject2 = int.parse(input3!);

  print("Enter the subject3 : ");
  String? input4 = stdin.readLineSync();
  subject3 = int.parse(input4!);
  mark = subject1+subject2+subject3;
  if(subject1 >=50 && subject2 >=50 && subject3>=50 && mark >= 50){
    print("the name is : ${input}");
    print("the sum is : ${mark}");
    print("Sucesss");
  }

  else if(subject1 >=49 && subject2 >=50 && subject3>=50 && mark <= 49){
    print("the name is : ${input}");
    print("the sum is : ${mark}");
    print("failed");
  }
  else if(subject1 <=49 && subject2 >=50 && subject3>=50 || mark <= 49){
    print("the name is : ${input}");
    print("the sum is : ${mark}");
    print("failed");
  }
  else if(subject1 >=50 && subject2 <=49 && subject3>=50 || mark >= 49){
    print("the name is : ${input}");
    print("the sum is : ${mark}");
    print("failed");
  }
  else if(subject1 >=50 && subject2 >=50 && subject3 <=50 || mark >= 49){
    print("the name is : ${input}");
    print("the sum is : ${mark}");
    print("failed");
  }
  else{
    print("wrong process : ");
  }

}

