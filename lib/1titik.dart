import 'dart:math';

class Titik {
  double PosisiX;
  double PosisiY;

  Titik({required this.PosisiX, required this.PosisiY});

  double get x=>PosisiX;
  double get y=>PosisiY;

  set x(double x) => PosisiX = x;

  set y(double y) => PosisiY = y;

  void setTitik({required double x, required double y}) {
    PosisiX = x;
    PosisiY = y;
  }

  void tampilTitik() {
    print('Titik: ($PosisiX, $PosisiY)');
  }

  void pindahKeTitik(Titik titik) {
    PosisiX = titik.PosisiX;
    PosisiY = titik.PosisiY;
  }

  double hitungJarak(Titik titik) {
    double dx = PosisiX - titik.PosisiX;
    double dy = PosisiY - titik.PosisiY;
    return sqrt(dx * dx + dy * dy);
  }
}
