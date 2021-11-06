import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/cubit/auth_cubit.dart';
import 'package:kksi/shared/theme.dart';

class ProfilePageGuru extends StatelessWidget {
  const ProfilePageGuru({Key? key}) : super(key: key);

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
                      'KS',
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
                        'Budi Santoso',
                        style: blueTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'NIP 0232438343',
                        style: blueTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        'budi@gmail.com',
                        style: greyTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail-profil');
                  },
                  child: Text(
                    'Identitas Guru',
                    style: blueTextStyle.copyWith(
                      fontSize: 10,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget laporanKehadiran() {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/laporan-kehadiran');
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
                  'Laporan Kehadiran',
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

    Widget laporanNilai() {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/laporan-nilai');
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
                  'Laporan Nilai',
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

    Widget jadwalMengajar() {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/jadwal-mengajar');
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
                  'assets/icon_jadwal_mengajar.png',
                  width: 25,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Jadwal Mengajar',
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

    Widget programTahunan() {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/program-tahunan');
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
                  'assets/icon_program_tahunan.png',
                  width: 22,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Program Tahunan',
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
        backgroundColor: kWhiteColor,
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
              height: 49,
            ),
            Row(
              children: [
                laporanKehadiran(),
                SizedBox(
                  width: 12,
                ),
                laporanNilai(),
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Row(
              children: [
                programTahunan(),
                SizedBox(
                  width: 12,
                ),
                jadwalMengajar(),
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
