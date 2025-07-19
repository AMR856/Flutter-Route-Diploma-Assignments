import 'dart:io';

void main(){
  int userInput = int.parse(stdin.readLineSync()!);
  List <int> nums = [];
  int sum = 0;
  while (userInput >= 0){
    sum += userInput;
    nums.add(userInput);
    userInput = int.parse(stdin.readLineSync()!);
  }
  double avg = sum / nums.length;
  int belowAverageNum = 0, aboveAverageNum = 0, equalAverageNum = 0;
  for (int i = 0; i < nums.length; i++){
    if (nums[i] == avg) equalAverageNum++;
    else if (nums[i] > avg) aboveAverageNum++;
    else belowAverageNum++;
  }
  print('Above average:$aboveAverageNum');
  print('Below average:$belowAverageNum');
  print('Equal average:$equalAverageNum');
}