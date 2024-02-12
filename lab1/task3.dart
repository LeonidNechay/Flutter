// Знайти всі тризначні числа, які дорівнюють сумі кубів своїх цифр.

import 'dart:math';

void task3() {
  for (int i = 100; i < 1000; i++) {
    int a = i ~/ 100;
    int b = (i % 100) ~/ 10;
    int c = i % 10;
    if (i == (pow(a, 3) + pow(b, 3) + pow(c, 3))) {
      print(i);
    }
  }
}
