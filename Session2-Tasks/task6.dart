import 'dart:io';

void main(){
  print('Please enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  int reversedNum = 0;
  while (n > 0){
    reversedNum = (reversedNum * 10) + n % 10;
    n ~/= 10;
  }
  print('Reversed Num: $reversedNum');
}