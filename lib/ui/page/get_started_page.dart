import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class GetStartedPage extends StatefulWidget {
  GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  int _currentIndex = 0;

  final CarouselController? carouselController = new CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    this.carouselController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget skipButton() {
      return GestureDetector(
        onTap: () {
          if (_currentIndex < 2) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
          }
        },
        child: Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(
            top: 18,
            right: 23,
            bottom: 40,
          ),
          child: Text(
            (_currentIndex == 2) ? '' : 'skip',
            style: blueTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget indicator() {
      return Container(
        margin: EdgeInsets.only(
          top: 130,
          right: 17,
          left: 17,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (_currentIndex == 0)
                ? SizedBox(
                    height: 28,
                  )
                : GestureDetector(
                    onTap: () {
                      carouselController?.previousPage();
                    },
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/btn_back.png'),
                        ),
                      ),
                    ),
                  ),
            Spacer(),
            Row(
              children: [
                Container(
                  width: (_currentIndex == 0) ? 20 : 12,
                  height: (_currentIndex == 0) ? 20 : 12,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (_currentIndex == 0) ? kDarkBlue : kGreyColor,
                  ),
                ),
                Container(
                  width: (_currentIndex == 1) ? 20 : 12,
                  height: (_currentIndex == 1) ? 20 : 12,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (_currentIndex == 1) ? kDarkBlue : kGreyColor,
                  ),
                ),
                Container(
                  width: (_currentIndex == 2) ? 20 : 12,
                  height: (_currentIndex == 2) ? 20 : 12,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (_currentIndex == 2) ? kDarkBlue : kGreyColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            (_currentIndex == 0)
                ? SizedBox(
                    height: 28,
                  )
                : GestureDetector(
                    onTap: () {
                      if (_currentIndex == 2) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/sign-in', (route) => false);
                      } else {
                        carouselController?.nextPage();
                        setState(() {
                          _currentIndex += 1;
                        });
                      }
                    },
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/btn_go.png'),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      );
    }

    Widget getStarted1() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 238,
            height: 257,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_getStarted1.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 70,
              bottom: 14,
            ),
            child: Text(
              'Mudah Digunakan',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 22,
              ),
            ),
          ),
          Text(
            'Aplikasi ini memudahkan murid, guru,\ndan orang tua untuk mengakses\ntentang pendidikan',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    Widget getStarted2() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 238,
            height: 257,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_getStarted2.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 70,
              bottom: 14,
            ),
            child: Text(
              'Jadwal Teratur',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 22,
              ),
            ),
          ),
          Text(
            'Terdapat penjadwalan mata pelajaran\nyang telah ditentukan sesuai\ndengan jadwalnya',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    Widget getStarted3() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 238,
            height: 257,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_getStarted3.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 70,
              bottom: 14,
            ),
            child: Text(
              'Komunikasi Terjaga',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 22,
              ),
            ),
          ),
          Text(
            'Komunikasi antara murid, guru,\ndan orang tua tetap terjaga baik\nmeskipun dari jarak jauh',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    Widget carousel() {
      return CarouselSlider(
        items: [
          getStarted1(),
          getStarted2(),
          getStarted3(),
        ],
        carouselController: carouselController,
        options: CarouselOptions(
          initialPage: _currentIndex,
          aspectRatio: 0.8,
          viewportFraction: 1,
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

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            skipButton(),
            carousel(),
            // getStarted1(),
            // getStarted2(),
            // getStarted3(),
            indicator(),
          ],
        ),
      ),
    );
  }
}
