import 'dart:io';

// SWITCH CASE HOMEWORK
void main() {
  //funcWeek();  // task 1
  //funcYear();   // task 2
  //print(funcShape());  // task 3
  //funcWork();   // task 4
  print(funcGrade()); // task 5
}

// task 1. Задача на определение дня недели
void funcWeek() {
  print('Введите номер дня недели от 1 до 7');
  int day = int.tryParse(stdin.readLineSync() ?? 'error') ?? 0;

  switch (day) {
    case 1:
      print('Понедельник');
      break;
    case 2:
      print('Вторник');
      break;
    case 3:
      print('Среда');
      break;
    case 4:
      print('Четверг');
      break;
    case 5:
      print('Пятница');
      break;
    case 6:
      print('Суббота');
      break; // if we change breat to return, it will stop the recursion
    case 7:
      print('Воскресенье');
      break;
    case 0:
      print('Это не число/номер');
      break;
    default:
      print('Ошибка');
  }
  //funcWeek(); // рекурсия, не останавливается без return. recursion
}

// task 2. Задача на определение времени года
void funcYear() {
  print('Введите номер месяца от 1 до 12');
  int month = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  switch (month) {
    case 1:
      print('зима');
      break;
    case 2:
      print('зима');
      break;
    case 3:
      print('весна');
      break;
    case 4:
      print('весна');
      break;
    case 5:
      print('весна');
      break;
    case 6:
      print('лето');
      break;
    case 7:
      print('лето');
      break;
    case 8:
      print('лето');
      break;
    case 9:
      print('осень');
      break;
    case 10:
      print('осень');
      break;
    case 11:
      print('осень');
      break;
    case 12:
      print('зима');
      break;
    case 0:
      print('Нет такого чила');
      break;
    default:
      print('ошибка');
  }
}

// task 3. Задача на определение типа фигуры
funcShape() {
  print('Введите номер фигуры от 1 до 3');
  int form = int.tryParse(stdin.readLineSync()!) ?? 0;

  switch (form) {
    case 1:
      return 'квадрат';
    case 2:
      return 'круг';
    case 3:
      return 'треугольник';
    case 0:
      return 'Нет такого числа';
    default:
      return 'ошибка';
  }
}

// task 4. Задача на определение рабочего дня
void funcWork() {
  print(
      'Введите номер дня недели от 1 до 7 чтобы определить выходные и рабочие дни');
  int job = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  switch (job) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      print('Числа от 1 до 5 (Понедельник-Пятница) будут рабочими днями');
      break;
    case 6:
    case 7:
      print('Числа 6 и 7 (Суббота-Воскресенье) будут выходными днями');
      break;
    case 0:
      print('Нет такого числа');
      break;
    default:
      print('Ошибка');
  }
}

// task 5. Задача на преобразование оценки
funcGrade() {
  print('Введите оценку среди A,B,C,D,F');
  String letter = stdin.readLineSync() ?? '';

  switch (letter) {
    case 'A':
      return 'отлично';
    case 'B':
      return 'хорошо';
    case 'C':
      return 'нормально/средне';
    case 'D':
      return 'плохо';
    case 'F':
      return 'провал';
    default:
      return 'нет такой оценки';
  }
}
