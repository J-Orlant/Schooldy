import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class TugasPage extends StatelessWidget {
  const TugasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tabBar() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: kGreyColor,
              width: 2,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tugas',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'To-Do',
                        style: blueTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'MISSING',
                        style: blueTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            tabBar(),
          ],
        ),
      ),
    );
  }
}
