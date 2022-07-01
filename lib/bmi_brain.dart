import 'dart:math';

class BMIBrain {
  double height;
  double weight;

  BMIBrain({required this.height, required this.weight});

  //Las funciones solo se deben dedicar a una sola cosa
  //Calcular result
  double calculateBMI() {
    double result = weight / pow(height / 100, 2);
    return result;
  }
  //Calcular la interpretacion - result1

  String getResult() {
    String result1 = "";

    if (calculateBMI() < 18.5) {
      result1 = "Bajo Peso";
    } else if (calculateBMI() < 25) {
      result1 = "Peso Normal";
    } else {
      result1 = "Sobrepeso";
    }

    return result1;
  }

  //Calcular la interpretacion - result2
  String getResult2() {
    String result2 = "";

    if (calculateBMI() < 18.5) {
      result2 = "Alimentate mejor";
    } else if (calculateBMI() < 25) {
      result2 = "Esta todo bien";
    } else {
      result2 = "Deberias hacer ejercicio";
    }
    return result2;
  }
}
