import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0)
    print('YES');
  else
    print('NO');
}