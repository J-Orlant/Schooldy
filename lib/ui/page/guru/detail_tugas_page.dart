import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/siswa_tile.dart';

class DetailTugasPage extends StatelessWidget {
  const DetailTugasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        centerTitle: true,
        elevation: 2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kDarkBlue,
          ),
        ),
        title: Text(
          'Tugas Pidato',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 29,
        ),
        children: [
          SiswaTile(
            isLate: true,
            name: 'Adam Putra',
          ),
          SiswaTile(
            isLate: true,
            name: 'Banu Septiano',
          ),
          SiswaTile(
            isDone: true,
            name: 'Cantika Rahma',
          ),
          SiswaTile(
            isDone: true,
            name: 'Galih Santoso',
            nilai: 90,
          ),
        ],
      ),
    );
  }
}
