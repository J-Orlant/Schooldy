import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kksi/models/jadwal_model.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/jadwal_item.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({Key? key}) : super(key: key);

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  final CarouselController? _controller = new CarouselController();
  int _currentIndex = 0;
  List hari = [
    'Senin',
    'Selasa',
  ];
  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return AppBar(
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kBlackColor,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        elevation: 0,
        title: Text(
          'JadwaL Pelajaran',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      );
    }

    Widget indicator() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 31,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TODO: Bug Tombol Carousel
            GestureDetector(
              onTap: () {
                if (_currentIndex == 0) {
                  return null;
                } else {
                  _controller?.previousPage();
                }
              },
              child: Image.asset(
                'assets/btn_back.png',
                width: 25,
              ),
            ),
            Container(
              width: 100,
              height: 36,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kDarkBlue,
              ),
              child: Center(
                child: Text(
                  hari[_currentIndex],
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 13,
                    letterSpacing: 2.4,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // TODO: Bug tombol carousel
                _controller?.nextPage();
              },
              child: Image.asset(
                'assets/btn_go.png',
                width: 25,
              ),
            ),
          ],
        ),
      );
    }

    Widget cardGroupSenin() {
      return Column(
        children: senin.map((data) {
          return JadwalItem(
            gambar: data.gambar,
            mapel: data.mapel,
            guru: data.guru,
            tugas: data.tugas,
            waktu: data.waktu,
          );
        }).toList(),
      );
    }

    Widget cardGroupSelasa() {
      return Column(
        children: selasa.map((data) {
          return JadwalItem(
            gambar: data.gambar,
            mapel: data.mapel,
            guru: data.guru,
            tugas: data.tugas,
            waktu: data.waktu,
          );
        }).toList(),
      );
    }

    Widget carousel() {
      return CarouselSlider(
        items: [
          cardGroupSenin(),
          cardGroupSelasa(),
        ],
        options: CarouselOptions(
          initialPage: _currentIndex,
          enableInfiniteScroll: false,
          viewportFraction: 1,
          aspectRatio: 0.6,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: kDarkBlue,
              ),
            ),
          ),
          child: appbar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 26,
          ),
          child: Column(
            children: [
              indicator(),
              carousel(),
            ],
          ),
        ),
      ),
    );
  }
}
