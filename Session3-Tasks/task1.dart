import 'dart:io';


const int intMaxValue = 9223372036854775807;
int getMin(List <int> arr){
  int minElement = intMaxValue;
  for (int i = 0; i < arr.length; i++){
    if (arr[i] < minElement)
      minElement = arr[i];
  }
  return minElement;
}

void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  print(getMin(arr));
}