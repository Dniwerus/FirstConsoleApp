import 'dart:io';

void main() {
  print('Добро пожаловать в простой калькулятор');
  while (true) {
    print('Введите первое число');

    switch (first = stdin.readLineSync() ?? '0') {
      case 'exit':
        return;
      default:
        first = int.parse(first);
    }
    print('Введите второе число');
    switch (second = stdin.readLineSync() ?? 0) {
      case 'exit':
        return;
      default:
        second = int.parse(second);
    }

    print('Выберите операцию над числами');
    print('1. Сложение \n 2. Вычитание \n 3. Умножение \n 4. Деление');
    switch (operation = stdin.readLineSync() ?? 0) {
      case 'exit':
        return;
      default:
        operation = int.parse(operation);
    }

    switch (operation) {
      case 1:
        print(resultat1);
      case 2:
        print(resultat2);
      case 3:
        print(resultat3);
      case 4:
        if (second == 0) {
          print('На ноль нельзя делить членосос');
        } else
          print(resultat4);
    }
  }
}

var first;
var second;
var operation;
var resultat1 = first + second;
var resultat2 = first - second;
var resultat3 = first * second;
var resultat4 = first / second;
