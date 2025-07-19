import 'dart:io';

void main(){
  print('How many Number you want to check ?');
  int n = int.parse(stdin.readLineSync()!);
  int positiveCount = 0, negativeCount  = 0, zeroCount = 0;
  print('Enter $n numbers');
  List<String> numArr = stdin.readLineSync()!.split(' ');
  for (int i = 0; i < n; i++){
    if (int.parse(numArr[i]) == 0) zeroCount++;
    else if (int.parse(numArr[i]) > 0) positiveCount++;
    else negativeCount++;
  }
  print('You Entered $positiveCount positive numbers And $negativeCount negative and $zeroCount Zero');
}