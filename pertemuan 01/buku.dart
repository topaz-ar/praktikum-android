class Buku {
  final String _judul;
  final String _pengarang;
  final int _tahunTerbit;

  Buku(this._judul, this._pengarang, this._tahunTerbit); //constructor

  // Getter
  String get getJudul => _judul;
  String get getPengarang => _pengarang;
  int get getTahunTerbit => _tahunTerbit;

  // Metode untuk menampilkan informasi buku
  void info() {
    print('Judul: $_judul');
    print('Pengarang: $_pengarang');
    print('Tahun Terbit: $_tahunTerbit');
  }
}