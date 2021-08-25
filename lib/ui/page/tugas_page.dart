import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/tab_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/tabbar-item.dart';
import 'package:kksi/ui/widget/tugas_item.dart';
import 'package:kksi/ui/widget/tugas_item_title.dart';

class TugasPage extends StatelessWidget {
  TugasPage({Key? key}) : super(key: key);

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
              child: Text(
                'Tugas',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),

            // NOTE: Tab-bar
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                children: [
                  TabbarItem(
                    title: 'to-do',
                    index: 0,
                  ),
                  TabbarItem(
                    title: 'done',
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
      Widget todo() {
        return _TodoSection();
      }

      Widget done() {
        return _DoneSection();
      }

      switch (index) {
        case 0:
          return todo();
        case 1:
          return done();
        default:
          return todo();
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

class _TodoSection extends StatefulWidget {
  _TodoSection({Key? key}) : super(key: key);

  @override
  __TodoSectionState createState() => __TodoSectionState();
}

class __TodoSectionState extends State<_TodoSection> {
  bool _first = false;
  bool _second = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            children: [
              // NOTE: Search
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: kPrimaryColor,
                    ),
                    hintText: 'Cari Tugasmu',
                    hintStyle: greyTextStyle,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kGreyColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              // NOTE: MAPEL
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    // Matematika
                    TugasItemTitle(
                      mapel: 'Matematika',
                      logo: 'assets/icon_math.png',
                      onPressed: () {
                        setState(() {
                          _first = !_first;
                        });
                      },
                    ),
                    AnimatedCrossFade(
                      crossFadeState: _first
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 100),
                      secondCurve: Curves.easeInOutQuint,
                      // sizeCurve: Curves.bounceIn,
                      firstChild:
                          SizedBox(), // When you don't want to show menu..
                      secondChild: Column(
                        children: [
                          for (int i = 0; i <= 2; i++)
                            TugasItem(
                              materi: 'Tugas Persamaan',
                              kelas: 'XII RPL 1',
                              deadline: 'Senin,11:59PM',
                            )
                        ],
                      ),
                    ),

                    // Bindo
                    TugasItemTitle(
                      margin: EdgeInsets.only(
                        top: (_first) ? 10 : 30,
                      ),
                      mapel: 'Bahasa Indonesia',
                      logo: 'assets/icon_bindo.png',
                      onPressed: () {
                        setState(() {
                          _second = !_second;
                        });
                      },
                    ),
                    AnimatedCrossFade(
                      crossFadeState: _second
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 100),
                      firstCurve: Curves.easeInOut,
                      secondCurve: Curves.easeIn,
                      // sizeCurve: Curves.bounceIn,
                      firstChild:
                          SizedBox(), // When you don't want to show menu..
                      secondChild: Column(
                        children: [
                          for (int i = 0; i <= 3; i++)
                            (i % 2 == 0)
                                ? TugasItem(
                                    materi: 'Surat Lamaran Kerja',
                                    kelas: 'XII RPL 1',
                                    deadline: 'Senin,11:59PM',
                                  )
                                : TugasItem(
                                    materi: 'Surat Lamaran Kerja',
                                    kelas: 'XII RPL 1',
                                    deadline: 'Senin,11:59PM',
                                    missing: true,
                                  )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _DoneSection extends StatefulWidget {
  _DoneSection({Key? key}) : super(key: key);

  @override
  __DoneSectionState createState() => __DoneSectionState();
}

class __DoneSectionState extends State<_DoneSection> {
  bool _first = false;
  bool _second = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            children: [
              // NOTE: Search
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: kPrimaryColor,
                    ),
                    hintText: 'Cari Tugasmu',
                    hintStyle: greyTextStyle,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kGreyColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              // NOTE: MAPEL
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    // Matematika
                    TugasItemTitle(
                      mapel: 'Matematika',
                      logo: 'assets/icon_math.png',
                      onPressed: () {
                        setState(() {
                          _first = !_first;
                        });
                      },
                    ),
                    AnimatedCrossFade(
                      crossFadeState: _first
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 100),
                      secondCurve: Curves.easeInOutQuint,
                      // sizeCurve: Curves.bounceIn,
                      firstChild:
                          SizedBox(), // When you don't want to show menu..
                      secondChild: Column(
                        children: [
                          for (int i = 0; i <= 3; i++)
                            TugasItem(
                              materi: 'Geometri',
                              kelas: 'XII RPL 1',
                              deadline: 'Senin,11:59PM',
                              missing: true,
                            )
                        ],
                      ),
                    ),

                    // Bindo
                    TugasItemTitle(
                      margin: EdgeInsets.only(
                        top: (_first) ? 10 : 30,
                      ),
                      mapel: 'Bahasa Indonesia',
                      logo: 'assets/icon_bindo.png',
                      onPressed: () {
                        setState(() {
                          _second = !_second;
                        });
                      },
                    ),
                    AnimatedCrossFade(
                      crossFadeState: _second
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 100),
                      firstCurve: Curves.easeInOut,
                      secondCurve: Curves.easeIn,
                      // sizeCurve: Curves.bounceIn,
                      firstChild:
                          SizedBox(), // When you don't want to show menu..
                      secondChild: Column(
                        children: [
                          for (int i = 0; i <= 3; i++)
                            TugasItem(
                              materi: 'Puisi',
                              kelas: 'XII RPL 1',
                              deadline: 'Senin,11:59PM',
                              missing: true,
                            )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
