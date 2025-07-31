import 'dart:io';

bool is2(int num){
  return num == 2;
}

int count2(List <int> arr){
  int count = 0;
  for (int i = 0; i < arr.length; i++)
    if (is2(arr[i])) count++;
  return count;
}

void main(){
  String goodUserInput = stdin.readLineSync()!;
  goodUserInput = goodUserInput.substring(2, goodUserInput.length - 2);
  List <int> arr = goodUserInput.split(', ').map(int.parse).toList();
  print(count2(arr));
}