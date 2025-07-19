import 'dart:io';

void main(){
  print('Please, enter the three numbers: ');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int num3 = int.parse(stdin.readLineSync()!);
  int min, max;
  min = (num1 < num2) ? ((num1 < num3) ? num1: num3) : ((num2 < num3) ? num2 : num3);
  max = (num1 > num2) ? ((num1 > num3) ? num1: num3) : ((num2 > num3) ? num2 : num3);
  print('Max = $max');
  print('Min = $min');
}
