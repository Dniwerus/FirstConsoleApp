import 'dart:io';

void main() {
  int a = 0;
  int b = 0;
  num? result;
  var input;
  var inputList;
  print('Калькулятор');

  while (true) {
    print('Введите уравнение');

    switch (input = stdin.readLineSync() ?? 0) {
      case 'exit':
        return;
      default:
        inputList = input.split(' ');
    }

    a = int.parse(inputList[0]);
    b = int.parse(inputList[2]);
    switch (inputList[1]) {
      case '+':
        result = a + b;
      case '-':
        result = a - b;
      case '*':
        result = a * b;
      case '/':
        if (b == 0) {
          print('Деление на ноль невозможно');
        } else
          result = a / b;
      default:
        print('Ошибка: Введите корректный оператор');
    }

    print('$a ${inputList[1]} $b = $result');
  }
}
