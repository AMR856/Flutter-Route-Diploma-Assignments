import 'dart:io';

void main(){
  print('Please, enter a number: ');
  int num = int.parse(stdin.readLineSync()!);
  if (num > 0) print('"Positive"');
  else if (num < 0) print('"Negative"');
  else print('"Zero"');
}