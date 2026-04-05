import 'dart:io';

void main() {

  print("\nChoose conversion: 1(C→F), 2(F→C)");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("Enter Celsius:");
    double c = double.parse(stdin.readLineSync()!);
    double f = (c * 9 / 5) + 32;
    print("Fahrenheit: $f");
  } else {
    print("Enter Fahrenheit:");
    double f = double.parse(stdin.readLineSync()!);
    double c = (f - 32) * 5 / 9;
    print("Celsius: $c");
  }
}