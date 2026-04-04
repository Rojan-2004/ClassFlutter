import 'dart:io';

void main() {

  // 1. Check Square
  print("Enter length:");
  double length = double.parse(stdin.readLineSync()!);
  print("Enter breadth:");
  double breadth = double.parse(stdin.readLineSync()!);

  if (length == breadth) {
    print("It is a Square");
  } else {
    print("It is a Rectangle");
  }

  // 2. Grading System
  print("\nEnter marks:");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks < 25) print("Grade: F");
  else if (marks < 45) print("Grade: E");
  else if (marks < 50) print("Grade: D");
  else if (marks < 60) print("Grade: C");
  else if (marks < 80) print("Grade: B");
  else print("Grade: A");

  // 3. Attendance
  print("\nEnter classes held:");
  int held = int.parse(stdin.readLineSync()!);
  print("Enter classes attended:");
  int attended = int.parse(stdin.readLineSync()!);

  double percentage = (attended / held) * 100;
  print("Attendance: $percentage%");

  if (percentage >= 75) {
    print("Allowed in exam");
  } else {
    print("Not allowed in exam");
  }

  // 4. Reverse 4-digit number
  print("\nEnter a 4-digit number:");
  int num = int.parse(stdin.readLineSync()!);
  int reversed = 0;

  while (num > 0) {
    int digit = num % 10;
    reversed = reversed * 10 + digit;
    num ~/= 10;
  }
  print("Reversed number: $reversed");

  // 5. Temperature Conversion
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

  // 6. Positive/Negative/Zero + Odd/Even
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

  // 7. Fibonacci Series
  print("\nEnter n for Fibonacci:");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;
  print("Fibonacci:");
  for (int i = 0; i < n; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }

  // 8. Character Count
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

  // 9. Palindrome Number
  print("\nEnter a number:");
  int original = int.parse(stdin.readLineSync()!);
  int temp = original, rev = 0;

  while (temp > 0) {
    rev = rev * 10 + temp % 10;
    temp ~/= 10;
  }

  if (original == rev) print("Palindrome");
  else print("Not Palindrome");

  // 10. Factorial (Iterative + Recursive)
  print("\nEnter number for factorial:");
  int factNum = int.parse(stdin.readLineSync()!);

  int factIter = 1;
  for (int i = 1; i <= factNum; i++) {
    factIter *= i;
  }

  int factRec = factorial(factNum);

  print("Iterative: $factIter");
  print("Recursive: $factRec");

  // 11. List stats
  print("\nEnter number of elements:");
  int count = int.parse(stdin.readLineSync()!);

  List<int> list = [];
  for (int i = 0; i < count; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }

  int max = list[0], min = list[0], sum = 0;

  for (int val in list) {
    if (val > max) max = val;
    if (val < min) min = val;
    sum += val;
  }

  double avg = sum / list.length;

  print("Max: $max, Min: $min, Avg: $avg");

  // 12. Leap Year
  print("\nEnter year:");
  int year = int.parse(stdin.readLineSync()!);

  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("Leap Year");
  } else {
    print("Not Leap Year");
  }

  // 13. Calculator
  print("\nEnter first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter operator (+, -, *, /, %):");
  String op = stdin.readLineSync()!;
  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  switch (op) {
    case '+':
      print("Result: ${num1 + num2}");
      break;
    case '-':
      print("Result: ${num1 - num2}");
      break;
    case '*':
      print("Result: ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) print("Result: ${num1 / num2}");
      else print("Cannot divide by zero");
      break;
    case '%':
      if (num2 != 0) print("Result: ${num1 % num2}");
      else print("Cannot mod by zero");
      break;
    default:
      print("Invalid operator");
  }

  // 14. Multiplication Table
  print("\nEnter number:");
  int tableNum = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print("$tableNum x $i = ${tableNum * i}");
  }
}

// Recursive factorial function
int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}