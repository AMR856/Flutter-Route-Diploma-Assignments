import 'dart:io';

int getElementIndex(List <int> arr, value){
  int index = -1;
  for (int i = 0; i < arr.length; i++){
    if (arr[i] == value){
      index = i;
      break;
    }
  }
  return index;
}


void countGeneral(List <int> arr){
  List <int> uniqueElements = [];
  List <int> uniqueElementsCount = [];
  for (int i = 0; i < arr.length; i++){
    int elementIndex = getElementIndex(uniqueElements, arr[i]);
    if (elementIndex == -1){
      uniqueElements.add(arr[i]);
      uniqueElementsCount.add(1);
    } else {
      int index = getElementIndex(uniqueElements, arr[i]);
      uniqueElementsCount[index]++;
    }
  }
  // 1 - > 2
  // 2 - > 1
  // 3 - > 2
  // 6 - > 1
  for (int i = 0; i < uniqueElements.length; i++)
    print('${uniqueElements[i]} - > ${uniqueElementsCount[i]}');
}


void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  countGeneral(arr);
}

// Map Solution is way better.
