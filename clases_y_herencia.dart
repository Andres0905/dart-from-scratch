import 'dart:io';

void main() {
  bool continuar = true;
  while (continuar) {
    double a, b;

    while (true) {
      print("Ingrese la Base: ");
      String? input = stdin.readLineSync();
      if (input != null && double.tryParse(input) != null) {
        a = double.parse(input);
        break;
      } else {
        print("Entrada Invalida. Ingrese Nuevamente el número");
      }
    }

    while (true) {
      stdout.write("Ingrese la Altura: ");
      String? input = stdin.readLineSync();
      if (input != null && double.tryParse(input) != null) {
        b = double.parse(input);
        break;
      } else {
        print("Entrada Invalida. Ingrese Nuevamente el número");
      }
    }

    var cuadr = Cuadrado();
    cuadr.base = a;
    cuadr.altura = b;
    print("EL area es : ${cuadr.area}");
    print("EL perimetro es : ${cuadr.perimetro}");
    print("EL lado es : ${cuadr.lado}");

    print("Desea hacer otra operación? (s/n): ");
    String respuesta = stdin.readLineSync()?.toLowerCase() ?? "";
    continuar = (respuesta == "s");
  }
}

class Rectangulo {
  double? base;
  double? altura;

  double get area => base! * altura!;
  double get perimetro => 2 * base! + 2 * altura!;
}

class Cuadrado extends Rectangulo {
  set lado(double value) {
    base = value;
    altura = value;
  }

  double get lado => base!;
}
