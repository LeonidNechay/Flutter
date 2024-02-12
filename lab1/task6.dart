// Реалізувати клас, що представляє багатокутник(багатокутник задається координатами
// вершин) і містить опис індексатора для доступу до сторін багатокутника. Передбачаити методи
// введення/виведення, знаходження периметру та площі.
import 'dart:io';
import 'dart:math';
import 'dart:core';

class Polygon {
  var _coordinates = <List<int>>[];

  List<List<int>> get Coordinates => _coordinates;
  set Coordinates(List<List<int>> list) {
    _coordinates = list;
  }

  Polygon(List<List<int>> coordinates) {
    Coordinates = coordinates;
  }

  void inputCoordinates() {
    stdout.write('Введіть кількість сторін багатокутника: ');
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      List<int> array = [];
      stdout.write('Введіть X сторони ${i + 1}: ');
      array.add(int.parse(stdin.readLineSync()!));
      stdout.write('Введіть Y сторони ${i + 1}: ');
      array.add(int.parse(stdin.readLineSync()!));
      Coordinates.add(array);
    }
  }

  void display() {
    print("Вершини багатокутника: ");
    for (int i = 0; i < Coordinates.length; i++) {
      print("Сторона ${i + 1} - (${Coordinates[i][0]}, ${Coordinates[i][1]})");
    }
  }

  void perimeter() {
    var sides = [];
    for (int i = 0; i < Coordinates.length - 1; i++) {
      double side = sqrt(pow((Coordinates[i][0] - Coordinates[i + 1][0]), 2) +
          pow((Coordinates[i][1] - Coordinates[i + 1][1]), 2));
      sides.add(side);
    }
    sides.add(sqrt(pow((Coordinates.last[0] - Coordinates[0][0]), 2) +
        pow((Coordinates.last[1] - Coordinates[0][1]), 2)));
    double perimeter = sides.reduce((a, b) => a + b);
    print("Периметр багатокутника - $perimeter");
  }

  void area() {
    var area = 0;
    var sum1 = 0;
    var sum2 = 0;
    for (int i = 0; i < Coordinates.length - 1; i++) {
      sum1 += Coordinates[i][0] * Coordinates[i + 1][1];
      sum2 += Coordinates[i + 1][0] * Coordinates[i][1];
    }
    area = sum1 +
        (Coordinates.last[0] * Coordinates[0][1]) -
        sum2 -
        (Coordinates[0][0] * Coordinates.last[1]);
    var area2 = area.toDouble();
    area2 /= 2;
    print("Площа багатокутника - $area2");
  }
}
