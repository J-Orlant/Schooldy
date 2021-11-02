import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/custom_text_button.dart';
import 'package:lottie/lottie.dart';

class SuccessForgotPage extends StatefulWidget {
  SuccessForgotPage({Key? key}) : super(key: key);

  @override
  _SuccessForgotPageState createState() => _SuccessForgotPageState();
}

class _SuccessForgotPageState extends State<SuccessForgotPage> {
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
              'Cek email anda untuk pembaruan password',
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
              title: 'Kembali ke Login',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/sign-in', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
