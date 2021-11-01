import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/program_tahunan_tile.dart';

class ProgramTahunanPage extends StatelessWidget {
  const ProgramTahunanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List content = [
      ProgramTahunanTile(
        waktu: 'Juli-Desember 2021',
        konten: 'Belajar efektif semester ganjil',
        color: Color(0xff0000FF),
      ),
      ProgramTahunanTile(
        waktu: 'September 2021',
        konten: 'Penilaian tengah semester ganjil',
        color: kDarkBlue,
      ),
      ProgramTahunanTile(
        waktu: 'Oktober 2021',
        konten: 'Pembagian rapot PTS ganjil',
        color: Color(0xff79A9F5),
      ),
      ProgramTahunanTile(
        waktu: 'Desember 2021',
        konten: 'Penilaian akhir semester ganjil',
        color: Color(0xffC2E2F5),
      ),
      ProgramTahunanTile(
        waktu: 'Desember 2021',
        konten: 'Pembagian raport PAS ganjil',
        color: kDarkBlue,
      ),
      ProgramTahunanTile(
        waktu: 'Desember-Januari 21/22',
        konten: 'Libur semester ganjil',
        color: Color(0xff0000FF),
      ),
      ProgramTahunanTile(
        waktu: 'Februari 2022',
        konten: 'Pembelajaran efektif semester genap',
        color: Color(0xff79A9F5),
      ),
    ];
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        centerTitle: true,
        elevation: 2,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kDarkBlue,
          ),
        ),
        title: Column(
          children: [
            Text(
              'Program Tahunan',
              style: blueTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            Text(
              '2021/2022',
              style: greyTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 44,
        ),
        children: [
          ...content,
        ],
      ),
    );
  }
}
