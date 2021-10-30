import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/guru/detail_kelas_page.dart';
import 'package:kksi/ui/widget/group_class_item.dart';
import 'package:kksi/ui/widget/kelas_item.dart';

class KelasPage extends StatefulWidget {
  KelasPage({Key? key}) : super(key: key);

  @override
  State<KelasPage> createState() => _KelasPageState();
}

class _KelasPageState extends State<KelasPage> {
  int _currentIndex = 0;
  CarouselController? controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 21),
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 20,
          bottom: 15,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.25),
              blurRadius: 5.0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Daftar Kelas',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget groupClass() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                controller?.jumpToPage(0);
              },
              child: GroupClassItem(
                kelas: 'Kelas X',
                index: 0,
                isClicked: (_currentIndex == 0) ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                controller?.jumpToPage(1);
              },
              child: GroupClassItem(
                kelas: 'Kelas XI',
                index: 1,
                isClicked: (_currentIndex == 1) ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                controller?.jumpToPage(2);
              },
              child: GroupClassItem(
                kelas: 'Kelas XII',
                index: 2,
                isClicked: (_currentIndex == 2) ? true : false,
              ),
            ),
          ],
        ),
      );
    }

    Widget kelas() {
      Widget kelasX() {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailKelasPage();
                    },
                  ),
                );
              },
              child: KelasItem(
                image: 'assets/image_kelas_rpl_1.png',
                kelas: 'X RPL 1',
              ),
            ),
            KelasItem(
              image: 'assets/image_kelas_rpl_2.png',
              kelas: 'X RPL 2',
            ),
            KelasItem(
              image: 'assets/image_kelas_mm_1.png',
              kelas: 'X MM 1',
            ),
          ],
        );
      }

      Widget kelasXI() {
        return Column(
          children: [
            KelasItem(
              image: 'assets/image_kelas_rpl_1.png',
              kelas: 'XI RPL 1',
            ),
            KelasItem(
              image: 'assets/image_kelas_bc_2.png',
              kelas: 'XI BC 1',
            ),
          ],
        );
      }

      Widget kelasXII() {
        return Column(
          children: [
            KelasItem(
              image: 'assets/image_kelas_rpl_1.png',
              kelas: 'XII RPL 1',
            ),
          ],
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 22,
        ),
        child: CarouselSlider(
          items: [
            kelasX(),
            kelasXI(),
            kelasXII(),
          ],
          carouselController: controller,
          options: CarouselOptions(
            initialPage: _currentIndex,
            enableInfiniteScroll: false,
            aspectRatio: 0.5,
            viewportFraction: 1,
            scrollPhysics: BouncingScrollPhysics(),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            groupClass(),
            kelas(),
          ],
        ),
      ),
    );
  }
}
