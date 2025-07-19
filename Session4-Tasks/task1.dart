import 'dart:io';

void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  int value = int.parse(stdin.readLineSync()!);
  bool isFound = false;
  for (int i = 0; i < arr.length; i++){
    if (arr[i] == value){
      isFound = true;
      break;
    }
  }
  if (isFound) print('Yes');
  else print('No');
}