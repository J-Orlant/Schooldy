class JadwalModel {
  final String gambar;
  final String mapel;
  final String guru;
  final int tugas;
  final String waktu;

  JadwalModel({
    required this.gambar,
    required this.mapel,
    required this.guru,
    required this.tugas,
    this.waktu = '1 Jam 30 Menit',
  });
}

final senin = [
  JadwalModel(
    gambar: 'assets/image_jadwal_pbo.png',
    mapel: 'Pemograman Berorientasi Objek',
    guru: 'Bambang Sentosa',
    tugas: 24,
  ),
  JadwalModel(
    gambar: 'assets/image_jadwal_penjas.png',
    mapel: 'Pendidikan Jasmani dan Rohani',
    guru: 'Ryan Pratama',
    tugas: 20,
  ),
  JadwalModel(
    gambar: 'assets/image_jadwal_bindo.png',
    mapel: 'Bahasa Indonesia',
    guru: 'Susi Susilawati',
    tugas: 10,
  ),
];
final selasa = [
  JadwalModel(
    gambar: 'assets/image_jadwal_matematika.png',
    mapel: 'Matematika',
    guru: 'Rini Fitriyah',
    tugas: 24,
  ),
  JadwalModel(
    gambar: 'assets/image_jadwal_android.png',
    mapel: 'Android',
    guru: 'Yonando Wibowo',
    tugas: 20,
  ),
  JadwalModel(
    gambar: 'assets/image_jadwal_basdat.png',
    mapel: 'Basis Data',
    guru: 'Riswan Hermawan',
    tugas: 20,
  ),
];
