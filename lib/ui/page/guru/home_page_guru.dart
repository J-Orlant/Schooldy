import 'package:flutter/material.dart';

import 'package:kksi/providers/kalender_app.dart';
import 'package:kksi/shared/theme.dart';

import 'package:kksi/ui/widget/kalender_item.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class HomePageGuru extends StatefulWidget {
  HomePageGuru({Key? key}) : super(key: key);

  @override
  State<HomePageGuru> createState() => _HomePageGuruState();
}

class _HomePageGuruState extends State<HomePageGuru> {
  bool isAbsen = false;

  @override
  Widget build(BuildContext context) {
    Widget botLayer() {
      Widget header() {
        return Container(
          margin: EdgeInsets.only(
            top: 22,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWhiteColor,
                ),
                child: Center(
                  child: Text(
                    'BS',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 18,
                      color: Color(0xff91B5F6),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerRight,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Center(
                        child: Image.asset(
                          'assets/icon_bell.png',
                          width: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/notif');
                        },
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: kPrimaryColor, width: 2),
                          ),
                          child: Center(
                            child: Text(
                              '2',
                              style: greyTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }

      Widget userName() {
        return Container(
          margin: EdgeInsets.only(
            top: 15,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Halo',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 14,
                ),
              ),
              Text(
                'Budi Santoso',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        );
      }

      Widget todoSection() {
        return Container(
          margin: EdgeInsets.only(
            top: 21,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oktober',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          '6 Kegiatan Bulan ini',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ('/kegiatan-page'));
                    },
                    child: Image.asset(
                      'assets/icon_kalender.png',
                      width: 36,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                child: Consumer<Kalender>(
                  builder: (context, kalender, _) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 0;
                        },
                        child: KalenderIitem(
                          date: 22,
                          day: 'Sen',
                          index: 0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 1;
                        },
                        child: KalenderIitem(
                          date: 23,
                          day: 'Sel',
                          index: 1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 2;
                        },
                        child: KalenderIitem(
                          date: 24,
                          day: 'Rab',
                          index: 2,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 3;
                        },
                        child: KalenderIitem(
                          date: 25,
                          day: 'Kam',
                          index: 3,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 4;
                        },
                        child: KalenderIitem(
                          date: 26,
                          day: 'Jum',
                          index: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget section2() {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width - 20,
          padding: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 23,
          ),
          margin: EdgeInsets.only(top: 21),
          decoration: BoxDecoration(
            color: kDarkBlue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Statistik Kehadiran',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  Flexible(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CircularPercentIndicator(
                              radius: 90.0,
                              lineWidth: 8,
                              animation: true,
                              animationDuration: 800,
                              percent: 90 / 100,
                              backgroundColor: kWhiteColor.withOpacity(0.5),
                              progressColor: kWhiteColor,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text(
                                '90%',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Hadir',
                              style: whiteTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 26,
                        ),
                        Column(
                          children: [
                            CircularPercentIndicator(
                              radius: 90.0,
                              lineWidth: 8,
                              animation: true,
                              animationDuration: 800,
                              percent: 10 / 100,
                              backgroundColor: kWhiteColor.withOpacity(0.5),
                              progressColor: Color(0xffDF7D7D),
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text(
                                '10%',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Tidak Hadir',
                              style: whiteTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 34,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kWhiteColor,
                        ),
                        child: Row(
                          children: [
                            Text(
                              '10',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Izin',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 34,
                        margin: EdgeInsets.only(
                          top: 28,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kWhiteColor,
                        ),
                        child: Row(
                          children: [
                            Text(
                              '10',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Sakit',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          userName(),
          todoSection(),
          section2(),
        ],
      );
    }

    Widget absen() {
      return SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.23,
          minChildSize: 0.23,
          maxChildSize: 0.45,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: ListView(
                controller: scrollController,
                padding: EdgeInsets.only(
                  top: 10,
                ),
                children: [
                  Center(
                    child: Container(
                      width: 60,
                      height: 4,
                      margin: EdgeInsets.only(bottom: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kGreyColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: defaultMargin,
                      left: defaultMargin,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Absen Kehadiran',
                              style: blueTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Senin, 09 Agustus',
                              style: blueTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                        (isAbsen)
                            ? Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 6,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffDF7D7D),
                                  ),
                                  color: Color(0xffDF7D7D).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'Terlamabat\n1 Jam 50 Menit',
                                  style: blackTextStyle.copyWith(
                                    color: Color(0xffDF7D7D),
                                    fontWeight: medium,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  // NOTE: Absen
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAbsen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icon_absen_masuk_guru.png',
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                'Absen Masuk',
                                style: blueTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAbsen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icon_tidak_hadir_guru.png',
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                'Absen Masuk',
                                style: blueTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: medium,
                                  color: Color(0xffE28F8F),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAbsen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icon_keluar_guru.png',
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                'Absen Masuk',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            botLayer(),
            absen(),
          ],
        ),
      ),
    );
  }
}
