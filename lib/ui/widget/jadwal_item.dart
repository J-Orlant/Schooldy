import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class JadwalItem extends StatelessWidget {
  final String gambar;
  final String mapel;
  final String guru;
  final int tugas;
  final String waktu;

  const JadwalItem({
    required this.gambar,
    required this.mapel,
    required this.guru,
    required this.tugas,
    required this.waktu,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 170,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 24,
      ),
      margin: EdgeInsets.only(
        bottom: 28,
      ),
      decoration: BoxDecoration(
        color: kDarkBlue,
        image: DecorationImage(
          image: AssetImage('assets/image_card_jadwal.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            gambar,
            width: 136,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mapel,
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Create by $guru',
                  style: whiteTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/logo_jadwal_tugas.png',
                      width: 16,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      tugas.toString() + ' Tugas',
                      style: whiteTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/logo_jadwal_waktu.png',
                      width: 16,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      waktu,
                      style: whiteTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
