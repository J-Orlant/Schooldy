import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/tab_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/notification_item.dart';
import 'package:kksi/ui/widget/tabbar-item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tabBar() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 15,
        ),
        color: kWhiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: Title
            Container(
                margin: EdgeInsets.only(
                  top: 22,
                  left: defaultMargin,
                  bottom: 22,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    Text(
                      'Notifikasi',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                )),

            // NOTE: Tab-bar
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                children: [
                  TabbarItem(
                    title: 'Terbaru',
                    index: 0,
                  ),
                  TabbarItem(
                    title: 'Lampau',
                    index: 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
          ],
        ),
      );
    }

    Widget selectedPage(index) {
      Widget terbaru() {
        return _TerbaruSection();
      }

      Widget lampau() {
        return _LampauSection();
      }

      switch (index) {
        case 0:
          return terbaru();
        case 1:
          return lampau();
        default:
          return terbaru();
      }
    }

    return BlocBuilder<TabCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  tabBar(),
                  selectedPage(state),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _TerbaruSection extends StatefulWidget {
  _TerbaruSection({Key? key}) : super(key: key);

  @override
  __TerbaruSectionState createState() => __TerbaruSectionState();
}

class __TerbaruSectionState extends State<_TerbaruSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            NotificationItem(
              name: 'Syafira S.pd',
              message: 'Selamat pagi semua! terimakasih telah menyerahkan',
              bubble: 2,
            ),
            NotificationItem(
              name: 'Marayo M.pd',
              message: 'Untuk siswa yang saya ajar diharapkan membawa alat',
              bubble: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class _LampauSection extends StatefulWidget {
  _LampauSection({Key? key}) : super(key: key);

  @override
  __LampauSectionState createState() => __LampauSectionState();
}

class __LampauSectionState extends State<_LampauSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            NotificationItem(
              name: 'Kurwa S.pd',
              message: 'Selamat pagi semua! terimakasih telah menyerahkan',
            ),
          ],
        ),
      ),
    );
  }
}
