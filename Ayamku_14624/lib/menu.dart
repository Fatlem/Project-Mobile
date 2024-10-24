class Menu {
  String nama;
  String deskripsi;
  double harga; // Ubah tipe data harga menjadi double
  String gambar;

  Menu({
    required this.nama,
    required this.deskripsi,
    required this.harga,
    required this.gambar,
  });
}

// Daftar menu ayam
List<Menu> listMenuAyam = [
  Menu(
    nama: 'Ayam Goreng 1',
    deskripsi: 'Ayam goreng lezat',
    harga: 25000,
    gambar: 'ayam1.png',
  ),
  Menu(
    nama: 'Ayam Goreng 2',
    deskripsi: 'Ayam goreng enak',
    harga: 23000,
    gambar: 'ayam2.png',
  ),
  Menu(
    nama: 'Ayam Goreng 3',
    deskripsi: 'Ayam goreng crispy',
    harga: 30000,
    gambar: 'ayam3.png',
  ),
  Menu(
    nama: 'Ayam Goreng 4',
    deskripsi: 'Ayam goreng renyah',
    harga: 52000,
    gambar: 'ayam4.png',
  ),
  Menu(
    nama: 'Ayam Goreng 5',
    deskripsi: 'Ayam goreng gurih',
    harga: 22000,
    gambar: 'ayam5.png',
  ),
  Menu(
    nama: 'Ayam Goreng 6',
    deskripsi: 'Ayam goreng spesial',
    harga: 99999,
    gambar: 'ayam6.png',
  ),
];
