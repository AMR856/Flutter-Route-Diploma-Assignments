import 'dart:io';


void main(){
  print('Please enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  bool isPrime = true;
  for (int i = 2; i < n; i++){
    if (n % i == 0){
      isPrime = false;
      break;
    }
  }
  if (isPrime && n >= 2) print('yes');
  else print('no');
}