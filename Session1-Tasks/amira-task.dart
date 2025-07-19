import 'dart:io';


void main(){
  int num1, num2;
  print('Please, enter the two numbers on two separate lines');
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);
  int userChoice;
  print('What operation do you want to do? ');
  print('1- Addition');
  print('2- Subtraction');
  print('3- Multiplication');
  print('4- Division');
  userChoice = int.parse(stdin.readLineSync()!);
  switch (userChoice){
    case 1: {
      print(num1 + num2);
      break;
    }
    case 2: {
      print(num1 - num2);
      break;
    }
    case 3: {
      print(num1 * num2);
      break;
    }
    case 4: {
      print(num1 ~/ num2);
      break;
    }
    default: {
      print('Invalid Operation');
      break;
    }
  }
}