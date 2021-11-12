import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/cubit/auth_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/line_titles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.25),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kDarkBlue,
                  ),
                  child: Center(
                    child: Text(
                      'JA',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Justin Anditiaman',
                        style: blueTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'NIS 0232438343',
                        style: blueTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        'justin@gmail.com',
                        style: greyTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail-profil');
                  },
                  child: Text(
                    'Identitas Siswa',
                    style: blueTextStyle.copyWith(
                      fontSize: 10,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget statistik() {
      return Container(
        width: double.infinity,
        height: 182,
        margin: EdgeInsets.only(
          right: 5,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: kDarkBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 5,
            minY: 0,
            maxY: 100,
            titlesData: LineTitles.getTitleData(),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: kWhiteColor.withOpacity(0.1),
                  strokeWidth: 1,
                );
              },
              drawVerticalLine: false,
            ),
            borderData: FlBorderData(
              show: true,
              border: Border(
                bottom: BorderSide(
                  color: kWhiteColor.withOpacity(0.1),
                ),
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                show: true,
                dotData: FlDotData(show: true),
                barWidth: 2,
                colors: [
                  kWhiteColor,
                ],
                belowBarData: BarAreaData(
                  show: true,
                  gradientTo: Offset(0, 1),
                  colors: [
                    kWhiteColor,
                    kWhiteColor.withOpacity(0.2),
                  ],
                ),
                spots: [
                  FlSpot(0, 0),
                  FlSpot(1, 60),
                  FlSpot(2, 70),
                  FlSpot(3, 80),
                  FlSpot(4, 90),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget statistik2() {
      return Container(
        width: double.infinity,
        height: 182,
        margin: EdgeInsets.only(
          right: 5,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: kDarkBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 5,
            minY: 0,
            maxY: 100,
            titlesData: LineTitles.getTitleData(),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: kWhiteColor.withOpacity(0.1),
                  strokeWidth: 1,
                );
              },
              drawVerticalLine: false,
            ),
            borderData: FlBorderData(
              show: true,
              border: Border(
                bottom: BorderSide(
                  color: kWhiteColor.withOpacity(0.1),
                ),
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                show: true,
                dotData: FlDotData(show: true),
                barWidth: 2,
                colors: [
                  kWhiteColor,
                ],
                belowBarData: BarAreaData(
                  show: true,
                  gradientTo: Offset(0, 1),
                  colors: [
                    kWhiteColor,
                    kWhiteColor.withOpacity(0.2),
                  ],
                ),
                spots: [
                  FlSpot(0, 0),
                  FlSpot(1, 50),
                  FlSpot(2, 90),
                  FlSpot(3, 70),
                  FlSpot(4, 90),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget statistik3() {
      return Container(
        width: double.infinity,
        height: 182,
        margin: EdgeInsets.only(
          right: 5,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: kDarkBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 5,
            minY: 0,
            maxY: 100,
            titlesData: LineTitles.getTitleData(),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: kWhiteColor.withOpacity(0.1),
                  strokeWidth: 1,
                );
              },
              drawVerticalLine: false,
            ),
            borderData: FlBorderData(
              show: true,
              border: Border(
                bottom: BorderSide(
                  color: kWhiteColor.withOpacity(0.1),
                ),
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                show: true,
                dotData: FlDotData(show: true),
                barWidth: 2,
                colors: [
                  kWhiteColor,
                ],
                belowBarData: BarAreaData(
                  show: true,
                  gradientTo: Offset(0, 1),
                  colors: [
                    kWhiteColor,
                    kWhiteColor.withOpacity(0.2),
                  ],
                ),
                spots: [
                  FlSpot(0, 0),
                  FlSpot(1, 40),
                  FlSpot(2, 70),
                  FlSpot(3, 80),
                  FlSpot(4, 90),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget statistikKet() {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
          bottom: 24,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: (_currentIndex == 0)
                        ? kDarkBlue
                        : kDarkBlue.withOpacity(0.25),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: (_currentIndex == 1)
                        ? kDarkBlue
                        : kDarkBlue.withOpacity(0.25),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: (_currentIndex == 2)
                        ? kDarkBlue
                        : kDarkBlue.withOpacity(0.25),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5,
                    color: kBlackColor.withOpacity(0.25),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_kenaikan.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Kenaikan Nilai\n+ 25%',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_penurunan.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Penurunan Nilai\n+ 25%',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget carousel() {
      return CarouselSlider(
        items: [
          statistik(),
          statistik2(),
          statistik3(),
        ],
        options: CarouselOptions(
          initialPage: _currentIndex,
          aspectRatio: 1.6,
          viewportFraction: 0.95,
          scrollPhysics: BouncingScrollPhysics(),
          enableInfiniteScroll: false,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
    }

    Widget rapot() {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/rapot');
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: kDarkBlue,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 5,
                  color: kBlackColor.withOpacity(0.25),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon_rapot.png',
                  width: 16,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Rapot',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget jadwal() {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/jadwal');
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 5,
                  color: kBlackColor.withOpacity(0.25),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon_jadwal.png',
                  width: 16,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Jadwal Pelajaran',
                  style: blueTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buttonSignOut() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: kWhiteColor,
            elevation: 1,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
            context.read<AuthCubit>().signOut();
            BlocProvider.of<PageCubit>(context).setPage(0);
          },
          child: Text(
            'Sign Out',
            style: blueTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 12,
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: appBar(),
          preferredSize: Size.fromHeight(110),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            SizedBox(
              height: 18,
            ),
            Text(
              'Statistik Nilai',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            carousel(),
            statistikKet(),
            Row(
              children: [
                rapot(),
                SizedBox(
                  width: 12,
                ),
                jadwal(),
              ],
            ),
            buttonSignOut(),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
