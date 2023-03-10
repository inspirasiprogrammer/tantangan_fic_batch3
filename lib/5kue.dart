abstract class Kue {
  String Nama;
  double Harga;

  Kue({required this.Nama, required this.Harga});

  String get n => Nama;
  double get h => Harga;

  set n(String n) => Nama = n;
  set h(double h) => Harga = h;

  void setKue({required String n, required double h}) {
    Nama = n;
    Harga = h;
  }

  // Method abstrak untuk menghitung harga kue
  double hitungHarga();

  // Override method toString() untuk menampilkan nama dan harga kue
  @override
  String toString() {
    return '$Nama (Rp${Harga.toStringAsFixed(2)})';
  }
}

// Subkelas KuePesanan
class KuePesanan extends Kue {
  double Berat;
  double get b => Berat;

  set b(double b) => Berat = b;

  KuePesanan(String n, double h, this.Berat) : super(Nama: n, Harga: h);

  @override
  double hitungHarga() {
    return Harga * Berat;
  }

  // Override method toString() untuk menampilkan jenis kue dan atributnya
  @override
  String toString() {
    return 'Kue Pesanan - $Nama (Rp${Harga.toStringAsFixed(2)})';
  }
}

//subkelas KueJadi
class KueJadi extends Kue {
  double Jumlah;
  double get j => Jumlah;

  set j(double j) => Jumlah = j;

  KueJadi(String n, double h, this.Jumlah) : super(Nama: n, Harga: h);

  // Implementasi method hitungHarga()
  @override
  double hitungHarga() {
    return Harga * Jumlah * 2;
  }

  // Override method toString() untuk menampilkan jenis kue dan atributnya
  @override
  String toString() {
    return 'Kue Jadi - $Nama (Rp${Harga.toStringAsFixed(2)})';
  }
}
