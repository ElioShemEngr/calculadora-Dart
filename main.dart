import 'dart:io';

void main() {
  print('Ingrese el primer número:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Ingrese la operación (+, -, *, /):');
  String operacion = stdin.readLineSync()!;

  double resultado = 0;

  switch (operacion) {
    case '+':
      resultado = num1 + num2;
      print('El resultado de la suma es: $resultado');
      break;
    case '-':
      resultado = num1 - num2;
      print('El resultado de la resta es: $resultado');
      break;
    case '*':
      resultado = num1 * num2;
      print('El resultado de la multiplicación es: $resultado');
      break;
    case '/':
      if (num2 != 0) {
        resultado = num1 / num2;
        print('El resultado de la división es: $resultado');
      } else {
        print('¡Error! No se puede dividir por cero.');
      }
      break;
    default:
      print('Operación no válida.');
      break;
  }
}
