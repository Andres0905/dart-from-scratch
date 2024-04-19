import 'dart:io';
import 'dart:math';

class Challenge1 {
  void run() {
    double? num;
    while (true) {
      stdout.write("Ingrese un número: ");
      String? input = stdin.readLineSync();
      num = verificar(input);
      if (num != null) {
        break;
      }
    }
    if (num > 0)
      print("Positivo");
    else if (num < 0)
      print("Negativo");
    else
      print("Es cero");
  }
}

class Challenge2 {
  void run() {
    double? num1, num2;
    while (true) {
      print("Ingrese primer número:");
      String? input = stdin.readLineSync();
      num1 = verificar(input);
      if (num1 != null) {
        break;
      }
    }
    while (true) {
      print("Ingrese segundo número:");
      String? input = stdin.readLineSync();
      num2 = verificar(input);
      if (num2 != null) {
        break;
      }
    }
    print(
        "Suma: ${num1 + num2}\nResta: ${num1 - num2}\nMultiplicación: ${num1 * num2}");
    if (num2 != 0) {
      print("División: ${num1 / num2}");
    } else {
      print("No se puede dividir por cero");
    }
  }
}

class Challenge3 {
  void run() {
    double? num;
    while (true) {
      print("Ingrese un número:");
      String? input = stdin.readLineSync();
      num = verificar(input);
      if (num != null) {
        break;
      }
    }
    print("El cuadrado de $num es: ${(num * num)}");
  }
}

class Challenge4 {
  void run() {
    double? radio;
    while (true) {
      print("Ingrese el radio del círculo:");
      String? input = stdin.readLineSync();
      radio = verificar(input);
      if (radio != null) {
        break;
      }
    }
    double area = pi * radio * radio;
    print("El área del círculo con radio $radio es: $area");
  }
}

class Challenge5 {
  void run() {
    double? dia;
    while (true) {
      print("Ingrese un número entre 1 y 7:");
      String? input = stdin.readLineSync();
      dia = verificar(input);
      if (dia != null) {
        break;
      }
    }
    switch (dia) {
      case 1:
        print("Lunes");
        break;
      case 2:
        print("Martes");
        break;
      case 3:
        print("Miercoles");
        break;
      case 4:
        print("Jueves");
        break;
      case 5:
        print("Viernes");
        break;
      case 6:
        print("Sabado");
        break;
      case 7:
        print("Domingo");
        break;
      default:
        print("Número no válido");
        break;
    }
  }
}

class Challenge6 {
  void run() {
    double? salario;
    while (true) {
      print("Ingrese su salario mensual:");
      String? input = stdin.readLineSync();
      salario = verificar(input);
      if (salario != null) {
        break;
      }
    }
    double impuesto = salario > 1000 ? 0.1 * salario : 0;
    print("El impuesto a pagar es: $impuesto");
  }
}

class Challenge7 {
  void run() {
    try {
      print("Número a dividir:");
      double n = double.parse(stdin.readLineSync()!);
      print("Divisor:");
      double divisor = double.parse(stdin.readLineSync()!);
      print("Resultado: ${n / divisor}");
    } catch (e) {
      print("Error al realizar la operación!");
    }
  }
}

class Challenge8 {
  void run() {
    int suma = 0;
    for (int i = 1; i <= 100; i += 2) {
      suma += i;
    }
    print("La suma de números impares entre 1 y 100 es: $suma");
  }
}

class Challenge9 {
  void run() {
    print("Ingrese numerador de la primera fracción:");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la primera fracción:");
    int den1 = int.parse(stdin.readLineSync()!);

    print("Ingrese numerador de la segunda fracción:");
    int num2 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la segunda fracción:");
    int den2 = int.parse(stdin.readLineSync()!);

    try {
      Fraccion fraccion1 = Fraccion(num1, den1);
      Fraccion fraccion2 = Fraccion(num2, den2);
      Fraccion resultado = fraccion1.sumar(fraccion2);
      print("La suma de $fraccion1 y $fraccion2 es: $resultado");
    } catch (e) {
      print("Error: $e");
    }
  }
}

class Fraccion {
  int numerador;
  int denominador;

  Fraccion(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw Exception("El denominador no puede ser cero.");
    }
  }

  Fraccion sumar(Fraccion otra) {
    int nuevoNumerador =
        numerador * otra.denominador + otra.numerador * denominador;
    int nuevoDenominador = denominador * otra.denominador;
    return Fraccion(nuevoNumerador, nuevoDenominador);
  }

  @override
  String toString() {
    return "$numerador/$denominador";
  }
}

class Challenge10 {
  void run() {
    print("Introduce una palabra:");
    String palabra = stdin.readLineSync()!;
    String invertida = palabra.split('').reversed.join();
    print("La palabra invertida es: $invertida");
  }
}

class Challenge11 {
  void run() {
    print("Introduce el primer número:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Introduce el segundo número:");
    double num2 = double.parse(stdin.readLineSync()!);
    print("Introduce el tercer número:");
    double num3 = double.parse(stdin.readLineSync()!);
    double promedio = (num1 + num2 + num3) / 3;
    print("El promedio de los tres números es: $promedio");
  }
}

class Challenge12 {
  void run() {
    List<int> numeros = [];
    for (int i = 0; i < 5; i++) {
      print("Introduce el número ${i + 1}:");
      numeros.add(int.parse(stdin.readLineSync()!));
    }
    print("El número más grande de la lista es: ${numeros.reduce(max)}");
  }
}

class Challenge13 {
  void run() {
    print("Introduce una palabra:");
    String palabra = stdin.readLineSync()!;
    bool esPalindromo = palabra == palabra.split('').reversed.join();
    if (esPalindromo) {
      print("La palabra $palabra es un palíndromo.");
    } else {
      print("La palabra $palabra no es un palíndromo.");
    }
  }
}

class Challenge14 {
  void run() {
    print("Introduce un número:");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero % 2 == 0) {
      print("El número $numero es par.");
    } else {
      print("El número $numero es impar.");
    }
  }
}

class Challenge15 {
  void run() {
    print("Introduce un número:");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero >= 0 && numero <= 10) {
      print("El número $numero está en el rango de 0 a 10.");
    } else {
      print("El número $numero está fuera del rango de 0 a 10.");
    }
  }
}

double? verificar(String? entrada) {
  if (entrada == null) {
    print("Error: La entrada está vacía.");
    return null;
  }

  try {
    double numero = double.parse(entrada);
    return numero;
  } catch (e) {
    print("Error: La entrada no es un número entero.");
    return null;
  }
}
