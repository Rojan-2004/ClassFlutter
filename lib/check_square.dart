import 'dart:io';

void main() {

  print("Enter length:");
  double length = double.parse(stdin.readLineSync()!);
  print("Enter breadth:");
  double breadth = double.parse(stdin.readLineSync()!);

  if (length == breadth) {
    print("It is a Square");
  } else {
    print("It is a Rectangle");
  }
}