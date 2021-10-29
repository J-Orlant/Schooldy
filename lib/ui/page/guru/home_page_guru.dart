import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/models/agenda_models.dart';
import 'package:kksi/providers/absensi_app.dart';
import 'package:kksi/providers/kalender_app.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/animation/custom_rect_tween.dart';
import 'package:kksi/ui/page/animation/hero_dialog_route.dart';
import 'package:kksi/ui/widget/agenda_item.dart';
import 'package:kksi/ui/widget/kalender_item.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageGuru extends StatelessWidget {
  const HomePageGuru({Key? key}) : super(key: key);

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
                    'KS',
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
                'Kevin Saputra',
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
                  Image.asset(
                    'assets/icon_kalender.png',
                    width: 36,
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
                'Statistik Tugas',
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

    Widget agenda() {
      return SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.23,
          minChildSize: 0.23,
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
                    child: Column(
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
                          Navigator.of(context).push(
                            HeroDialogRoute(
                              builder: (context) => Center(
                                child: _AgendaPopUpCard(
                                  aModels: data,
                                ),
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
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _AgendaPopUpCard extends StatefulWidget {
  const _AgendaPopUpCard({
    Key? key,
    required this.aModels,
  }) : super(key: key);

  final AgendaModels aModels;

  @override
  __AgendaPopUpCardState createState() => __AgendaPopUpCardState();
}

class __AgendaPopUpCardState extends State<_AgendaPopUpCard> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    Widget link(show) {
      if (show) {
        return InkWell(
          onTap: () async {
            const url = 'https://meet.google.com/nmb-yakz-vxf';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Text(
            'https://meet.google.com/nmb-yakz-vxf',
            style: blueTextStyle.copyWith(
              color: Colors.blue,
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return Hero(
      tag: widget.aModels.id,
      createRectTween: (begin, end) {
        return CustomRectTween(begin: begin, end: end);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          child: SizedBox(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: widget.aModels.warna,
                          ),
                          child: Center(
                            child: Text(
                              widget.aModels.guru,
                              style: whiteTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.aModels.mapel,
                              style: primaryTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Suji Yuji S.pd ',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: light,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  widget.aModels.materi,
                                  style: blackTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(),
                    link(show),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Opacity(
                        opacity: (show) ? 0.50 : 1,
                        child: Consumer<Absensi>(
                          builder: (context, absensi, _) => TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: kDarkBlue,
                            ),
                            onPressed: () {
                              setState(() {
                                show = true;
                              });
                              absensi.isAbsen = 'absen';
                              absensi.id = widget.aModels.id;
                            },
                            child: Text(
                              'Hadir',
                              style: whiteTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Center(
                      child: Text(widget.aModels.waktu),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
