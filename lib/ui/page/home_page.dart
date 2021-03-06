import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/providers/absensi_app.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/siswa/absen_page.dart';
import 'package:kksi/ui/widget/agenda_item.dart';
import 'package:kksi/models/agenda_models.dart';
import 'package:kksi/ui/widget/jurusan_item.dart';
import 'package:provider/provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'animation/custom_rect_tween.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

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
                    'JA',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 19,
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
                  fontSize: 20,
                ),
              ),
              Text(
                'Justin Anditiaman',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        );
      }

      Widget jurusan() {
        return Container(
          height: 38,
          margin: EdgeInsets.only(
            top: 18,
            left: defaultMargin,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [
              JurusanItem(
                jurusan: 'Rekayasa Perangkat Lunak',
                color: kDarkBlue,
                select: true,
              ),
              JurusanItem(
                jurusan: 'Multimedia',
                color: Color(0xffDF7D7D),
              ),
              JurusanItem(
                jurusan: 'Broadcasting',
                color: Color(0xffF9C9C9),
              ),
              JurusanItem(
                jurusan: 'Teknik Jaringan dan Komputer',
                color: Color(0xff58A560),
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
          margin: EdgeInsets.only(top: 25),
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
                'Statistik Tugas',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<PageCubit>(context).setPage(1);
                },
                child: Row(
                  children: [
                    Flexible(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              CircularPercentIndicator(
                                radius: 80.0,
                                lineWidth: 8,
                                animation: true,
                                animationDuration: 800,
                                percent: 70 / 100,
                                backgroundColor: kWhiteColor.withOpacity(0.5),
                                progressColor: kWhiteColor,
                                circularStrokeCap: CircularStrokeCap.round,
                                center: Text(
                                  '70%',
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
                                'Tugas',
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
                                radius: 80.0,
                                lineWidth: 8,
                                animation: true,
                                animationDuration: 800,
                                percent: 30 / 100,
                                backgroundColor: kWhiteColor.withOpacity(0.5),
                                progressColor: Color(0xffDF7D7D),
                                circularStrokeCap: CircularStrokeCap.round,
                                center: Text(
                                  '30%',
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
                                'Terlambat',
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
                          width: 100,
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
                                '40',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Selesai',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: medium,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 118,
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
                                '120',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Total Tugas',
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
          jurusan(),
          section2(),
        ],
      );
    }

    Widget agenda() {
      return SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.4,
          maxChildSize: 0.75,
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
                    child: Text(
                      'Senin, 09 Agustus',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),

                  // Item
                  _AgendaItemLoop(),
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
            agenda(),
          ],
        ),
      ),
    );
  }
}

class _AgendaItemLoop extends StatelessWidget {
  _AgendaItemLoop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Absensi>(
      builder: (context, absensi, _) => Column(
        children: fakedata.map((data) {
          return Consumer<Absensi>(
            builder: (context, absensi, _) => GestureDetector(
              onTap: (absensi.isAbsen == 'avaible')
                  ? (data.status == 'avaible') // at first false
                      ? () {
                          // Navigator.of(context).push(
                          //   HeroDialogRoute(
                          //     builder: (context) => Center(
                          //       child: _AgendaPopUpCard(
                          //         aModels: data,
                          //       ),
                          //     ),
                          //   ),
                          // );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AbsenPage(
                                aModels: data,
                              ),
                            ),
                          );
                        }
                      : () {}
                  : () {},
              child: Hero(
                tag: data.id,
                createRectTween: (begin, end) {
                  return CustomRectTween(begin: begin, end: end);
                },
                child: AgendaItem(
                  id: data.id,
                  profil: data.guru,
                  mapel: data.mapel,
                  materi: data.materi,
                  color: data.warna,
                  status: (absensi.id == data.id)
                      ? absensi.isAbsen.toString()
                      : data.status,
                  time: data.waktu,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
