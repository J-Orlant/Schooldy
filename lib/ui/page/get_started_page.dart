import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/custom_text_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image_getStarted.png'),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: EdgeInsets.only(top: height / 1.5),
          child: Column(
            children: [
              Text(
                'Lakukan yang terbaik di semua kesempatan yang kamu miliki',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              CustomTextButton(
                  title: 'Get Started',
                  margin: EdgeInsets.only(top: 50),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
