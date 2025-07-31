import 'dart:io';

void swap(int l, int r, List <int> arr){
  int temp = arr[l];
  arr[l] = arr[r];
  arr[r] = temp;
}

void optimizedBubbleSort(List <int> arr){
  bool isSorted;
  for (int i = 0; i < arr.length; i++){
    isSorted = true;
    for (int j = 0; j < arr.length - i - 1; j++){
      if (arr[j] > arr[j + 1]){
        isSorted = false;
        swap(j, j + 1, arr);
      }
    }
    if (isSorted) break;
  }
}

void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  optimizedBubbleSort(arr);
  print(arr);
}