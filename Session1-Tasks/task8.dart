import 'dart:io';

void main(){
  print('Please, enter your grade: ');
  String grade = stdin.readLineSync()!;
  switch (grade.toLowerCase()) {
    case 'a':  {
      print('Excellent');
      break;
    }
    case 'b':  {
      print('Outstanding');
      break;
    }
    case 'c':  {
      print('Good');
      break;
    }
    case 'd': {
      print('Can Do Better');
      break;
    }
    case 'f': {
      print('Failed');
      break;
    }
    default: {
      print('invalid grade');
      break;
    }
  }
}
