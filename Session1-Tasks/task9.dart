import 'dart:io';


void main(){
  print('Enter the radius and length of a cylinder: ');
  double radius = double.parse(stdin.readLineSync()!);
  double length = double.parse(stdin.readLineSync()!);
  const pi = 3.14159;
  double area = radius * radius * pi;
  print('The area is $area');
  print('The volume is ${area * length}');
}