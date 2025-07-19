import 'dart:io';


// Map Solution
// void main(){
//   var numMap = new Map();
//   stdout.write('Enter the integers between 1 and 100: ');
//   List <int> arr = stdin.readLineSync()!.split(' ').map(int.parse).toList();
//   int index = 0;
//   while (arr[index] != 0){
//     if (numMap.containsKey(arr[index])) numMap[arr[index]]++;
//     else numMap[arr[index]] = 1;
//     index++;
//   }
//   for (int key in numMap.keys) print('$key occurs ${numMap[key]} times');
// }

// Array Solution
void main(){
  List <int> countAry = List.filled(101, 0);
  stdout.write('Enter the integers between 1 and 100: ');
  List <int> userInput = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int i = 0; i < userInput.length; i++){
    if (userInput[i] == 0) break;
    else countAry[userInput[i]]++;
  }
  for (int i = 1; i < countAry.length; i++){
    if (countAry[i] != 0) print('${i} occurs ${countAry[i]} times');
  }
}