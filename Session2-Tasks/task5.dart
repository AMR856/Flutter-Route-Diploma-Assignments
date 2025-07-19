import 'dart:io';

void main(){
  print('Please enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  int result = 1;
  for (int i = 1; i <= n; i++){
    result *= i;
  }
  print('The Factorial of the number: $result');
}