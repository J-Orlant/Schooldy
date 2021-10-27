import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/custom_text_button.dart';
import 'package:kksi/ui/widget/custom_text_form.dart';

class ForgotPassPage extends StatelessWidget {
  ForgotPassPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue,
      appBar: AppBar(
        backgroundColor: kTransparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kWhiteColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/image_lupaPass.png',
              width: 260,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(defaultMargin),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lupa Password?',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Jangan khawatir tentang hal ini. Tolong masukan alamat email yang bisa dihubungi untuk aktivasi password kembali.',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 52,
                    ),
                    child: CustomTextForm(
                      hint: 'Masukkan Email Anda',
                      image: 'assets/icon_email.png',
                      controller: emailController,
                    ),
                  ),
                  CustomTextButton(
                    margin: EdgeInsets.only(top: 88),
                    title: 'Kirim',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/success-forgot', (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
