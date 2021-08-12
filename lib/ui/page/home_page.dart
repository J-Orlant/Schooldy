import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/agenda_item.dart';
import 'package:kksi/ui/widget/jurusan_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 15,
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
                height: 33,
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
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image_home.png'),
                      ),
                    ),
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
          jurusan(),
          section2(),
        ],
      );
    }

    Widget agenda() {
      return SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.35,
          minChildSize: 0.35,
          maxChildSize: 0.6,
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
                  AgendaItem(
                    profil: "SY",
                    mapel: "Bahasa Indonesia",
                    materi: "Teks Pidato",
                    color: kDarkBlue,
                  ),
                  AgendaItem(
                    profil: 'DS',
                    mapel: "Basis Data",
                    materi: "Subquery",
                    color: Color(0xffFF738C),
                  ),
                  AgendaItem(
                    profil: 'AE',
                    mapel: "Matematika",
                    materi: "Turunan",
                    color: Color(0xff58A560),
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
