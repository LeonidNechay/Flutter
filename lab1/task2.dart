// З клавіатури вводиться кількість сторін багатокутника. Необхідно
// вивести назву фігури («трикутник», «чотирикутник», «п’ятикутинк»,
// «шестикутник»).

import 'dart:io';

void task2() {
  stdout.write("Введіть кількість сторін: ");
  int n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case <= 2:
      print("Error");
    case 3:
      print('Це трикутник');
    case 4:
      print('Це прямокутник');
    case 5:
      print("Це п'ятикутник");
    case 6:
      print('Це шестикутник');
    case >= 7:
      print('Це багатокутник');
  }
}