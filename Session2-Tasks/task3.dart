import 'dart:io';

void main(){
  print('Please enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  print('The odd numbers are: ');
  for (int i = 1; i <= n * 2; i = i + 2){
    if (i != n * 2 - 1)
      stdout.write('${i} ');
    else
      stdout.write('$i\n');
    sum += i;
  }
  print('The Sum of odd Natural Numbers upto $n terms: $sum');
}