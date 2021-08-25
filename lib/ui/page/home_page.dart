import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/animation/hero_dialog_route.dart';
import 'package:kksi/ui/widget/agenda_item.dart';
import 'package:kksi/models/agenda_models.dart';
import 'package:kksi/ui/widget/jurusan_item.dart';
import 'package:url_launcher/url_launcher.dart';

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
            top: 31,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWhiteColor,
                ),
                child: Center(
                  child: Text(
                    'KS',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 25,
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
                'Hello',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
              ),
              Text(
                'Kevin Saputra',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        );
      }

      Widget jurusan() {
        return Container(
          margin: EdgeInsets.only(
            top: 35,
            left: defaultMargin,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
          ),
        );
      }

      Widget section2() {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            top: 15,
            right: defaultMargin,
            left: defaultMargin,
            bottom: 50,
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
            children: [
              Text(
                'Selalu ingat tentang jadwal pelajaran',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Catat hal hal penting di setiap mata pelajaran\nyang kamu pelajari',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/image_home.png',
                    width: 160,
                    height: 160,
                  )
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
          jurusan(),
          section2(),
        ],
      );
    }

    Widget agenda() {
      return SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.3,
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
                  right: defaultMargin,
                  left: defaultMargin,
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
                  Text(
                    'Senin, 09 Agustus',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 18,
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
    return Column(
      children: fakedata.map((data) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              HeroDialogRoute(
                builder: (context) => Center(
                  child: _AgendaPopUpCard(
                    aModels: data,
                  ),
                ),
              ),
            );
          },
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
            ),
          ),
        );
      }).toList(),
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
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kDarkBlue,
                          ),
                          onPressed: () {
                            setState(() {
                              show = true;
                            });
                          },
                          child: Text(
                            'Hadir',
                            style: whiteTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: semiBold,
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
