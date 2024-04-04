import 'dart:io';

void main() {
  // Prompting user to enter the first number
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  // Prompting user to enter the second number
  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  // Prompting user to choose an operation
  stdout.write("Choose an operation (+, -, *, /): ");
  String operation = stdin.readLineSync()!;

  double result;

  // Performing the selected operation
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error! Division by zero is not allowed.");
        return;
      }
      break;
    default:
      print("Error! Invalid operation.");
      return;
  }

  // Displaying the result
  print("Result: $result");
}
