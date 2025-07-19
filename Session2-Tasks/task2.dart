import 'dart:io';

void main(){
  print('Please enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  print('The first $n natural number is : ');
  for (int i = 1; i <= n; i++){
    if (i != n)
      stdout.write('$i ');
    else
      stdout.write('$i\n');
    sum += i;
  }
  print('The Sum of Natural Number upto $n terms : $sum');
}
