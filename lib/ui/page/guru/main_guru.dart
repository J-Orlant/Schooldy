import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/guru/chat_page.dart';
import 'package:kksi/ui/page/guru/home_page_guru.dart';
import 'package:kksi/ui/page/guru/kelas_page.dart';
import 'package:kksi/ui/page/guru/profile_page_guru.dart';
import 'package:kksi/ui/page/home_page.dart';
import 'package:kksi/ui/widget/custom_navigation_item.dart';

class MainGuru extends StatefulWidget {
  const MainGuru({Key? key}) : super(key: key);

  @override
  _MainGuruState createState() => _MainGuruState();
}

class _MainGuruState extends State<MainGuru> {
  @override
  Widget build(BuildContext context) {
    Widget currentPage(currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePageGuru();
        case 1:
          return KelasPage();
        case 2:
          return ChatPageGuru();
        case 3:
          return ProfilePageGuru();
        default:
          return HomePage();
      }
    }

    Widget navbar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 25,
            right: 28,
            left: 28,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 5,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavigationItem(
                icon: 'assets/icon_home.png',
                title: 'Home',
                index: 0,
              ),
              CustomNavigationItem(
                icon: 'assets/icon_kelas.png',
                width: 27,
                title: 'Kelas',
                index: 1,
              ),
              CustomNavigationItem(
                icon: 'assets/icon_chat.png',
                title: 'Chat',
                index: 2,
              ),
              CustomNavigationItem(
                icon: 'assets/icon_profile.png',
                title: 'Profile',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              currentPage(currentIndex),
              navbar(),
            ],
          ),
        );
      },
    );
  }
}
