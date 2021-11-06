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

class JadwalMengajarModel {
  final String gambar;
  final String mapel;
  final String kelas;
  final String waktu;

  JadwalMengajarModel({
    required this.gambar,
    required this.mapel,
    required this.kelas,
    this.waktu = 'Pukul 10.30 - 12.00',
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

final seninGuru = [
  JadwalMengajarModel(
    gambar: 'assets/image_jadwal_pbo.png',
    mapel: 'Pemograman Berorientasi Object',
    kelas: 'Kelas XI RPL 1',
    waktu: 'Pukul 07.00 - 08.30',
  ),
  JadwalMengajarModel(
    gambar: 'assets/image_jadwal_basdat.png',
    mapel: 'Basis Data',
    kelas: 'Kelas XI RPL 2',
    waktu: 'Pukul 08.45 - 10.15',
  ),
  JadwalMengajarModel(
    gambar: 'assets/image_jadwal_pbo.png',
    mapel: 'Pemograman Berorientasi Object',
    kelas: 'Kelas X RPL 1',
    waktu: 'Pukul 10.30 - 12.00',
  ),
];
final selasaGuru = [
  JadwalMengajarModel(
    gambar: 'assets/image_jadwal_pbo.png',
    mapel: 'Pemograman Berorientasi Object',
    kelas: 'Kelas XI RPL 3',
    waktu: 'Pukul 07.00 - 08.30',
  ),
  JadwalMengajarModel(
    gambar: 'assets/image_jadwal_basdat.png',
    mapel: 'Basis Data',
    kelas: 'Kelas XI RPL 1',
    waktu: 'Pukul 08.45 - 10.15',
  ),
  JadwalMengajarModel(
    gambar: 'assets/image_jadwal_android.png',
    mapel: 'Pemograman Berorientasi Object',
    kelas: 'Kelas X RPL 1',
    waktu: 'Pukul 10.30 - 12.00',
  ),
];
