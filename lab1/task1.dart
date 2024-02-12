// Розробити програму, яка за номером року Y визначає номер століття C
// (врахувати, що початком XX століття був 1901, а не 1900 рік).
import 'dart:io';

void task1() {
  stdout.write('Введіть рік: ');
  int y = int.parse(stdin.readLineSync()!);
  int c = y ~/ 100;
  if (y % 100 > 0) {
    print('$y - це ${c + 1} століття');
  } else {
    print('$y - це $c століття');
  }
}
