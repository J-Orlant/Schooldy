import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/chat_page.dart';
import 'package:kksi/ui/page/home_page.dart';
import 'package:kksi/ui/page/profile_page.dart';
import 'package:kksi/ui/page/tugas_page.dart';
import 'package:kksi/ui/widget/agenda_item.dart';
import 'package:kksi/ui/widget/custom_navigation_item.dart';
import 'package:kksi/ui/widget/jurusan_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget currentPage(currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TugasPage();
        case 2:
          return ChatPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    Widget navbar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(
            bottom: 25,
            right: defaultMargin,
            left: defaultMargin,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavigationItem(
                icon: 'assets/icon_home.png',
                index: 0,
              ),
              CustomNavigationItem(
                icon: 'assets/icon_tugas.png',
                index: 1,
              ),
              CustomNavigationItem(
                icon: 'assets/icon_chat.png',
                index: 2,
              ),
              CustomNavigationItem(
                icon: 'assets/icon_profile.png',
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
