import 'dart:io';


void main(){
  print('Please, enter your age: ');
  int age = int.parse(stdin.readLineSync()!);
  print('Please, enter your name: ');
  String name = stdin.readLineSync()!;
  if (age >= 0)
    print('Hi, $name, you have ${100 - age} years left to be 100 years old');
  else
    print('Please enter a valid age next time');
}