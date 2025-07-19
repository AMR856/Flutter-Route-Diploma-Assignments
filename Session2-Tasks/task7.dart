import 'dart:io';

void main(){
  int start = 120, end = 1000, i;
  for (i = start; i <= end; i = i + 5 * 6){
    if (i != 990)
      stdout.write('$i ');
    else
      stdout.write('$i');
  }
}