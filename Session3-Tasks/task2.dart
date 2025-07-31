import 'dart:io';

bool isEven(int num){
  return num % 2 == 0;
}

int sumEvenElements(List <int> arr){
  int sum = 0;
  for (int i = 0; i < arr.length; i++)
    if (isEven(arr[i])) sum += arr[i];
  return sum;
}

void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  print(sumEvenElements(arr));
}