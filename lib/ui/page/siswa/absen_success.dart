import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/custom_text_button.dart';
import 'package:lottie/lottie.dart';

class AbsenSuccess extends StatelessWidget {
  const AbsenSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 330,
              height: 330,
              margin: EdgeInsets.only(bottom: 33),
              child: LottieBuilder.asset(
                'assets/email_sent.json',
                reverse: false,
              ),
            ),
            Text(
              'Absen Berhasil',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
            CustomTextButton(
              margin: EdgeInsets.symmetric(
                horizontal: 90,
                vertical: 42,
              ),
              title: 'Kembali ke Home',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/mainSiswa', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
