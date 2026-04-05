import 'dart:io';

void main() {

  print("\nEnter a number:");
  int original = int.parse(stdin.readLineSync()!);
  int temp = original, rev = 0;

  while (temp > 0) {
    rev = rev * 10 + temp % 10;
    temp ~/= 10;
  }

  if (original == rev) print("Palindrome");
  else print("Not Palindrome");
}