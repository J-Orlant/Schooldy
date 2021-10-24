import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/custom_text_button.dart';
import 'package:kksi/ui/widget/custom_text_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Center(
        child: Container(
          width: 234,
          height: MediaQuery.of(context).size.height / 4,
          margin: EdgeInsets.only(
            top: 5,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_login.png'),
            ),
          ),
        ),
      );
    }

    Widget form() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: blueTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 33,
              ),
              CustomTextForm(
                hint: 'Email',
                image: 'assets/icon_email.png',
              ),
              SizedBox(
                height: 26,
              ),
              CustomTextForm(
                hint: 'Password',
                obsecure: true,
                image: 'assets/icon_password.png',
              ),

              // NOTE: Forgot Pass

              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 8),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/forgot-pass',
                    );
                  },
                  child: Text(
                    'Forgot Password',
                    style: primaryTextStyle.copyWith(
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              // NOTE: Button
              CustomTextButton(
                margin: EdgeInsets.only(top: 54),
                title: 'Masuk',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main', (route) => false);
                },
              ),

              // NOTE: Regis link
              Container(
                margin: EdgeInsets.only(top: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Are you a parent?',
                      style: greyTextStyle,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Sign Up',
                      style: blueTextStyle,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kDarkBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                logo(),
                form(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
