import 'dart:io';


void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  bubbleSort(arr);
  int index = 0;
  int firstSmallest = arr[index];
  while (arr[++index] != firstSmallest) break;
  print(arr[index]);
}

void swap(int l, int r, List <int> arr){
  arr[l] = arr[l] + arr[r];
  arr[r] = arr[l] - arr[r];
  arr[l] = arr[l] - arr[r];
  // int temp = arr[l];
  // arr[l] = arr[r];
  // arr[r] = temp;
}

void bubbleSort(List <int> arr){
  for (int i = 0; i < arr.length; i++){
    bool isSorted = true;
    for (int j = 0; j < arr.length - i - 1; j++){
      if (arr[j] > arr[j + 1]){
        isSorted = false;
        swap(j, j + 1, arr);
      }
    }
    if (isSorted) return;
  }
}

