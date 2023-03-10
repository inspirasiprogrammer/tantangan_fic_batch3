import 'dart:math';

class Calculator {
  double operan1;
  double operan2;

  Calculator({this.operan1 = 0.0, this.operan2 = 0.0});

  void isiOperan1(double x) {
    operan1 = x;
  }

  void isiOperan2(double x) {
    operan2 = x;
  }

  double tambah() {
    return operan1 + operan2;
  }

  double kurang() {
    return operan1 - operan2;
  }

  double kali() {
    return operan1 * operan2;
  }

  double bagi() {
    if (operan2 == 0.0) {
      throw Exception("Can't divide by zero");
    }
    return operan1 / operan2;
  }

  double pangkat() {
    num result = pow(operan1, operan2);
    if (result.isInfinite) {
      throw Exception("Result is too large");
    }
    return result.toDouble();
  }
}
