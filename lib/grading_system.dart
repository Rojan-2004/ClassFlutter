import 'dart:io';

void main() {

  print("\nEnter marks:");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks < 25) print("Grade: F");
  else if (marks < 45) print("Grade: E");
  else if (marks < 50) print("Grade: D");
  else if (marks < 60) print("Grade: C");
  else if (marks < 80) print("Grade: B");
  else print("Grade: A");

}