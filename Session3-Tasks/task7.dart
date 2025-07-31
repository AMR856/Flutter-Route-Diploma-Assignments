import 'dart:io';

void swap(int l, int r, List <int> arr){
  int temp = arr[l];
  arr[l] = arr[r];
  arr[r] = temp;
}

void selectionSort(List <int> arr){
  int minIndex;
  for (int i = 0; i < arr.length; i++){
    minIndex = i;
    for (int j = i; j < arr.length; j++){
      if (arr[minIndex] > arr[j]) minIndex = j;
    }
    swap(i, minIndex, arr);
  }
}



void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  selectionSort(arr);
  print(arr);
}