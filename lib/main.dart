import 'package:tantangan_fic_batch3/1titik.dart';
import 'package:tantangan_fic_batch3/2calc.dart';
import '3nilai.dart';
import '4dimensi.dart';
import '5kue.dart';
import 'dart:math';

void main() {
  print("==== Soal Nomor 1 ====");
  Titik titikA = Titik(PosisiX: 1, PosisiY: 2);
  Titik titikB = Titik(PosisiX: 3, PosisiY: 4);

  titikA.tampilTitik();
  titikB.tampilTitik();

  titikA.PosisiX = 5;
  titikB.setTitik(x: 4, y: 5);

  titikA.tampilTitik();
  titikB.tampilTitik();

  Titik titikC = Titik(PosisiX: 10, PosisiY: 12);
  titikA.pindahKeTitik(titikC);

  titikA.tampilTitik();

  double jarakAB = titikA.hitungJarak(titikB);
  print('Jarak titik A dan titik B adalah $jarakAB');

  print("==== Soal Nomor 2 ====");

  Calculator calculator = Calculator(operan1: 10, operan2: 5);
  print('Operan 1: ${calculator.operan1}');
  print('Operan 2: ${calculator.operan2}');
  print('Hasil tambah: ${calculator.tambah()}');
  print('Hasil kurang: ${calculator.kurang()}');
  print('Hasil kali: ${calculator.kali()}');
  print('Hasil bagi: ${calculator.bagi()}');
  print('Hasil pangkat: ${calculator.pangkat()}');

  print("==== Soal Nomor 3 ====");

  Nilai nilai = Nilai();
  nilai.setQuis(80);
  nilai.setUTS(70);
  nilai.setUAS(60);
  print('Nilai UTS: ${nilai.uts}');
  print('Nilai UAS: ${nilai.uas}');
  print('Nilai Quis: ${nilai.quis}');

  print('Nilai Akhir: ${nilai.getNilaiAkhir()}');
  print('Indeks: ${nilai.getIndeks()}');
  print('Keterangan: ${nilai.getKeterangan()}');

  print("==== Soal Nomor 4 ====");
  // bangun datar
  var persegi = PersegiPanjang(5, 10);
  print('Persegi panjang:');
  print('Panjang:' + persegi.panjang.toString());
  print('Lebar:' + persegi.lebar.toString());
  print('Luas: ${persegi.getLuas()}');
  print('Keliling: ${persegi.getKeliling()}');

  var bujurSangkar = BujurSangkar(7);
  print('Bujur sangkar:');
  print('Panjang:' + bujurSangkar.sisi.toString());
  print('Luas: ${bujurSangkar.getLuas()}');
  print('Keliling: ${bujurSangkar.getKeliling()}');

  var lingkaran = Lingkaran(5);
  print('Lingkaran:');
  print('Jari-jari:' + lingkaran.radius.toString());
  print('Luas: ${lingkaran.getLuas()}');
  print('Keliling: ${lingkaran.getKeliling()}');

  print("==== Soal Nomor 5 ====");
  //kue
  KuePesanan kue1 = KuePesanan("Kue Kering", 5000, 100);
  double HargaKue1 = kue1.hitungHarga();
  print(kue1); // output: Kue pesanan Kue Kering dengan Harga 5000.0 per gram
  print("Harga kue 1: ${HargaKue1}"); // output: Harga kue 1: 500000.0

  KueJadi kue2 = KueJadi("Donat", 2000, 10);
  double HargaKue2 = kue2.hitungHarga();
  print(kue2); // output: Kue jadi Donat dengan Harga 2000.0 per biji
  print("Harga kue 2: ${HargaKue2}"); // output: Harga kue 2: 40000.0

  // 1. Array yang terdiri dari 20 kue
  List<Kue> daftarKue = List.generate(20, (index) {
    Random random = Random();
    bool isKuePesanan = random.nextBool();
    String namaKue = "Kue ${index + 1}";
    double hargaKue = random.nextDouble() * 10000;
    double beratKue = random.nextDouble() * 100;
    double jumlahKue = random.nextDouble() * 100;

    if (isKuePesanan) {
      return KuePesanan(namaKue, hargaKue, beratKue);
    } else {
      return KueJadi(namaKue, hargaKue, jumlahKue);
    }
  });

  // cetak daftar kue
  for (var kue in daftarKue) {
    print(kue);
  }

  // Inisialisasi variabel untuk menyimpan total harga, total berat, dan total jumlah
  double totalHarga = 0;
  double totalBerat = 0;
  double totalJumlah = 0;

  // 2. Hitung total harga, total berat, dan total jumlah
  for (var kue in daftarKue) {
    totalHarga += kue.hitungHarga();
    if (kue is KuePesanan) {
      totalBerat += kue.Berat;
    } else if (kue is KueJadi) {
      totalJumlah += kue.Jumlah;
    }
  }

  // 3. Cetak total harga, total berat, dan total jumlah
  print("Total harga: ${totalHarga}");
  print("Total berat: ${totalBerat}");
  print("Total jumlah: ${totalJumlah}");

  // 4. Cetak kue dengan harga tertinggi
  Kue kueHargaTertinggi = daftarKue[0];
  for (var kue in daftarKue) {
    if (kue.hitungHarga() > kueHargaTertinggi.hitungHarga()) {
      kueHargaTertinggi = kue;
    }
  }
  print("Kue dengan harga tertinggi: ${kueHargaTertinggi}");
}
