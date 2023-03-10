abstract class Dimensi {
  double getLuas();
  double getKeliling();
}

class PersegiPanjang implements Dimensi {
  double panjang;
  double lebar;

  PersegiPanjang(this.panjang, this.lebar);

  @override
  double getLuas() {
    return panjang * lebar;
  }

  @override
  double getKeliling() {
    return 2 * (panjang + lebar);
  }
}

class BujurSangkar implements Dimensi {
  double sisi;

  BujurSangkar(this.sisi);

  @override
  double getLuas() {
    return sisi * sisi;
  }

  @override
  double getKeliling() {
    return 4 * sisi;
  }
}

class Lingkaran implements Dimensi {
  double radius;
  final double pi = 3.14;

  Lingkaran(this.radius);

  @override
  double getLuas() {
    return pi * radius * radius;
  }

  @override
  double getKeliling() {
    return 2 * pi * radius;
  }
}