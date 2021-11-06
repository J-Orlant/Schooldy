import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/cubit/auth_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/statistik_tile.dart';

class ProfilePageOrtu extends StatelessWidget {
  const ProfilePageOrtu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.25),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kDarkBlue,
                  ),
                  child: Center(
                    child: Text(
                      'YA',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yusuf Andid',
                        style: blueTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'yusuf@gmail.com',
                        style: greyTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pushNamed(context, '/detail-profil');
                //   },
                //   child: Text(
                //     'Identitas Anak',
                //     style: blueTextStyle.copyWith(
                //       fontSize: 10,
                //       decoration: TextDecoration.underline,
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      );
    }

    Widget statistik() {
      return Container(
        child: Column(
          children: [
            StatistikTile(
              kelas: 'X',
              item1: [135.0, true],
              item2: [94.0, false],
              item3: [50.0, false],
              item4: [74.0, false],
            ),
            StatistikTile(
              kelas: 'XI',
              item1: [135.0, false],
              item2: [94.0, false],
              item3: [140.0, true],
              item4: [74.0, false],
            ),
            StatistikTile(
              kelas: 'XI',
              item1: [1.0, false],
              item2: [1.0, false],
              item3: [1.0, false],
              item4: [1.0, false],
            ),
          ],
        ),
      );
    }

    Widget rapot() {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/rapot');
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: kDarkBlue,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 5,
                  color: kBlackColor.withOpacity(0.25),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon_rapot.png',
                  width: 16,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Rapot Anak',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget jadwal() {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/jadwal');
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 5,
                  color: kBlackColor.withOpacity(0.25),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon_jadwal.png',
                  width: 16,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Jadwal Pelajaran',
                  style: blueTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buttonSignOut() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: kWhiteColor,
            elevation: 1,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
            context.read<AuthCubit>().signOut();
            BlocProvider.of<PageCubit>(context).setPage(0);
          },
          child: Text(
            'Sign Out',
            style: blueTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 12,
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: appBar(),
          preferredSize: Size.fromHeight(110),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            SizedBox(
              height: 18,
            ),
            statistik(),
            Row(
              children: [
                rapot(),
                SizedBox(
                  width: 12,
                ),
                jadwal(),
              ],
            ),
            buttonSignOut(),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
