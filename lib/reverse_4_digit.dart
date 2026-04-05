import 'dart:io';

void main() {

  print("\nEnter a 4-digit number:");
  int num = int.parse(stdin.readLineSync()!);
  int reversed = 0;

  while (num > 0) {
    int digit = num % 10;
    reversed = reversed * 10 + digit;
    num ~/= 10;
  }
  print("Reversed number: $reversed");
}