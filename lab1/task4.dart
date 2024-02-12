// Створити функцію, яка за номером місяця повертає пору року, до якої відноситься цей місяць.

import 'dart:io';

void task4() {
  stdout.write("Введіть номер місяця: ");
  int month = int.parse(stdin.readLineSync()!);
  seasons(month);
}

void seasons(month) {
  switch (month) {
    case 12 || 1 || 2:
      print("Зима");
    case 3 || 4 || 5:
      print("Весна");
    case 6 || 7 || 8:
      print("Літо");
    case 9 || 10 || 11:
      print("Осінь");
  }
}
