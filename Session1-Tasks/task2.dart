import 'dart:io';

void main(){
  print('Please, enter the three numbers: ');
  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);
  double num3 = double.parse(stdin.readLineSync()!);
  double min, middle, max;
  if (num1 > num2 && num1 > num3){
    max = num1;
    if (num2 > num3) {
      middle = num2;
      min = num3;
    } else {
      middle = num3;
      min = num2;
    }
  } else if(num2 > num1 && num2 > num3){
    max = num2;
    if (num1 > num3) {
      middle = num1;
      min = num3;
    } else {
      middle = num3;
      min = num2;
    }
  } else {
    max = num3;
    if (num1 > num2){
      middle = num1;
      min = num2;
    } else {
      middle = num2;
      min = num1;
    }
  }
  // num % 1 == 0 ? num.toInt() : num
  stdout.write("${min % 1 == 0 ? min.toInt(): min}\n${middle % 1 == 0 ? middle.toInt(): middle}\n${max % 1 == 0 ? max.toInt(): max}");
}