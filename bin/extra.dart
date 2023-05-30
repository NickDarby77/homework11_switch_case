import 'dart:io';
import 'dart:math';

void main() {
  extraJob();
  chatGpt();
}

void extraJob() {
  int a = Random().nextInt(100);
  int b = Random().nextInt(100);

  print('У нас есть числа $a и $b, что мне с ними сделать ? (+, -, *, /)');
  String c = stdin.readLineSync() ?? '';

  switch (c) {
    case '+':
      print(a + b);
      break;
    case '-':
      print(a - b);
      break;
    case '*':
      print(a * b);
      break;
    case '/':
      print(a / b);
      break;
    default:
      print('Error');
  }
}

void chatGpt() {
  print('Type any number between 0 - 6');
  int number = int.tryParse(stdin.readLineSync()!) ?? -1;

  switch (number) {
    case 1:
    case 2:
    case 3:
      print('The number is between 1 and 3.');
      break;

    case 4:
    case 5:
      print('The number is either 4 or 5.');
      break;

    case -1:
      print('There is no such number');
      break;

    default:
      print('The number is outside the specified range.');
  }
}
