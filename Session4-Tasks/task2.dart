import 'dart:io';


void main(){
  String strippedUserInput = stdin.readLineSync()!;
  strippedUserInput = strippedUserInput.substring(2, strippedUserInput.length - 2);
  List <int> arr = strippedUserInput.split(', ').map(int.parse).toList();
  int sum = 0;
  for (int i = 0; i < arr.length; i++) sum += arr[i];
  print(sum / arr.length);
}