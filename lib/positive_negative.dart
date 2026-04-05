import 'dart:io';

void main() {

  print("\nEnter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("Positive");
    if (number % 2 == 0) print("Even");
    else print("Odd");
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}