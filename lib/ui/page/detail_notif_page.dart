import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class DetailNotifPage extends StatelessWidget {
  const DetailNotifPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.only(left: 8),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor,
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon_profile.png',
                  color: kDarkBlue,
                ),
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Syafira S.Pd',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '26, Oktober 2021',
                  style: greyTextStyle.copyWith(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget message() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 17,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffFAFAFA),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Pagi',
              style: blackTextStyle.copyWith(
                color: Color(0xff404041),
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Text(
              'Terimakasih karena telah menyelesaikan tugas tugas yang telah ibu berikan, minggu depan kita akan melakukan ulangan harian materi yang akan di ujikan adalah materi yang kemarin kita pelajari.\n\nApabila ada yang ingin ditanyakan mengenai materi tersebut bisa wa miss atau mungkin ada kendala bisa ditanyakan.\n\nTerimakasih atas perhatian nya.',
              style: blackTextStyle.copyWith(
                color: Color(0xff404041),
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kBlackColor,
        ),
        title: Text(
          'Notifikasi',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 25,
        ),
        children: [
          header(),
          message(),
        ],
      ),
    );
  }
}
