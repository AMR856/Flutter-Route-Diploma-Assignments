import 'dart:io';

void main(){
  print('Please, enter the letter to check: ');
  String letter = stdin.readLineSync()!;
  if (letter.toLowerCase() == 'a' ||
      letter.toLowerCase() == 'i' ||
      letter.toLowerCase() == 'o' ||
      letter.toLowerCase() == 'u' ||
      letter.toLowerCase() == 'e')
    print('The alphabet is a vowel');
  else
    print('The alphabet is a consonant');
}