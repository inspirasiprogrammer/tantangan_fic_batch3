class Nilai {
  double quis;
  double uts;
  double uas;

  Nilai({this.quis = 0.0, this.uts = 0.0, this.uas = 0.0});

  void setQuis(double x) {
    quis = x;
  }

  void setUTS(double x) {
    uts = x;
  }

  void setUAS(double x) {
    uas = x;
  }

  double getNilaiAkhir() {
    return (quis * 0.2) + (uts * 0.3) + (uas * 0.5);
  }

  String getIndeks() {
    double na = getNilaiAkhir();
    if (na >= 80) {
      return 'A';
    } else if (na >= 70) {
      return 'B';
    } else if (na >= 60) {
      return 'C';
    } else if (na >= 50) {
      return 'D';
    } else {
      return 'E';
    }
  }

  String getKeterangan() {
    String indeks = getIndeks();
    switch (indeks) {
      case 'A':
        return 'Sangat Baik';
      case 'B':
        return 'Baik';
      case 'C':
        return 'Cukup';
      case 'D':
        return 'Kurang';
      default:
        return 'Sangat Kurang';
    }
  }
}
