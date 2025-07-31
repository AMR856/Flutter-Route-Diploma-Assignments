import 'dart:io';

void swap(int l, int r, List <int> arr){
  int temp = arr[l];
  arr[l] = arr[r];
  arr[r] = temp;
}

void bubbleSort(List <int> arr){
  for (int i = 0; i < arr.length; i++){
    for (int j = 0; j < arr.length - i - 1; j++){
      if (arr[j] > arr[j + 1]){
        swap(j, j + 1, arr);
      }
    }
  }
}

void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  bubbleSort(arr);
  print(arr);
}