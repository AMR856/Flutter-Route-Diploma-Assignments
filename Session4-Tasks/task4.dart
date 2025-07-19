import 'dart:io';


void main(){
  stdout.write('Enter the number of students:');
  int n = int.parse(stdin.readLineSync()!);
  List <int> arr = [];
  stdout.write('Enter ${n} scores:');
  int max = 0, userInput;
  for (int i = 0; i < n; i++){
    userInput = int.parse(stdin.readLineSync()!);
    arr.add(userInput );
    if (max < userInput) max = userInput;
  }
  for (int i = 0; i < arr.length; i++){
    String str = 'Student ${i + 1} score is ${arr[i]} and grade is ';
    if (arr[i] >= max - 10) str += 'A';
    else if (arr[i] >= max - 20) str += 'B';
    else if (arr[i] >= max - 30) str += 'C';
    else if (arr[i] >= max - 40) str += 'D';
    else str += 'F';
    print(str);
  }
}