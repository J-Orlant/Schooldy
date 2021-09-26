import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/jadwal_item.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kBlackColor,
        ),
        title: Text(
          'JadwaL Pelajaran',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 21,
          left: 20,
          right: 12,
        ),
        children: [
          JadwalItem(
            hari: 'Senin',
            mapel: [
              'PBO',
              'PJOK',
              'PPKN',
            ],
          ),
          JadwalItem(
            hari: 'Selasa',
            mapel: [
              'KWU',
              'PABP',
              'BASDAT',
            ],
            color: Color(0xffF0F8FF),
          ),
          JadwalItem(
            hari: 'Rabu',
            mapel: [
              'PWPB',
              'Bahasa Indonesia',
              'Android',
            ],
          ),
          JadwalItem(
            hari: 'Kamis',
            mapel: [
              'Matematika',
              'PPL',
              'Basis Data',
            ],
            color: Color(0xffE6E6FA),
          ),
          JadwalItem(
            hari: 'Jumat',
            mapel: [
              'PBO',
              'PWPB',
              'Bahasa Inggris',
            ],
          ),
        ],
      ),
    );
  }
}
