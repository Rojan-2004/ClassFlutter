import 'dart:io';

void main() {

  print("\nEnter a string:");
  String str = stdin.readLineSync()!;

  int vowels = 0, consonants = 0, digits = 0, special = 0;

  for (int i = 0; i < str.length; i++) {
    String ch = str[i];

    if ("aeiouAEIOU".contains(ch)) {
      vowels++;
    } else if (RegExp(r'[a-zA-Z]').hasMatch(ch)) {
      consonants++;
    } else if (RegExp(r'[0-9]').hasMatch(ch)) {
      digits++;
    } else {
      special++;
    }
  }

  print("Vowels: $vowels, Consonants: $consonants, Digits: $digits, Special: $special");
}