import 'dart:io';

void main(){
  List <int> distinctElementsArray = [];
  stdout.write('Enter ten numbers: ');
  List <int> userInput = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int i = 0; i < userInput.length; i++){
    if (!distinctElementsArray.contains(userInput[i]))
      distinctElementsArray.add(userInput[i]);
  }
  print('The number of distinct number is ${distinctElementsArray.length}');
  stdout.write('The distinct numbers are: ');
  displayArray(distinctElementsArray);
}

void displayArray(List <int> arr){
  for (int i = 0; i < arr.length; i++) {
    if (i != arr.length - 1)
      stdout.write('${arr[i]} ');
    else
      stdout.write('${arr[i]}');
  }
}
