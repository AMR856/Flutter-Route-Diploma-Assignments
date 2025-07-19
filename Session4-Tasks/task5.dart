import 'dart:io';


void main(){
  int n = 10;
  List <int> arr = [];
  stdout.write('Enter ${n} numbers :');
  for (int i = 0; i < n; i++)
    arr.add(int.parse(stdin.readLineSync()!));
  reverse(arr);
  for (int i = 0; i < n; i++)
    stdout.write('${arr[i]} ');
}

void swap(int l, int r, List <int> arr){
  arr[l] = arr[l] + arr[r];
  arr[r] = arr[l] - arr[r];
  arr[l] = arr[l] - arr[r];
  // int temp = arr[l];
  // arr[l] = arr[r];
  // arr[r] = temp;
}

void reverse(List <int> arr){
  int l = 0, r = arr.length - 1;
  while(l < r){
    swap(l, r, arr);
    l++;
    r--;
  }
}
