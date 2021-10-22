// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/animation/custom_rect_tween.dart';
import 'package:kksi/ui/page/animation/hero_dialog_route.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bagian HEAD
                Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                    top: 22,
                    bottom: 13,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Chat',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(HeroDialogRoute(
                            builder: (context) => Center(
                              child: ChatPopUp(),
                            ),
                          ));
                        },
                        child: Hero(
                          tag: 'chat-pop',
                          child: Container(
                            width: 26,
                            height: 26,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kDarkBlue,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 16,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Bagian SEARCH
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 15,
                    ),
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: kPrimaryColor,
                        ),
                        hintText: 'Cari Chat',
                        hintStyle: primaryTextStyle,
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
                ),

                // TampilanChat(),
                TampilanChat(
                  profile: 'RN',
                  background: kCreamColor,
                  username: 'Bu Rena',
                  pesan: 'Baik terimakasih bu',
                  pesanMasuk: '2',
                  isMasuk: false,
                  isPanjang: false,
                  onTap: () {},
                ),

                TampilanChat(
                  profile: 'LS',
                  background: kCreamColor,
                  username: 'Bu Lesa',
                  pesan: 'Selamat siang kevin tolong untuk segera...',
                  pesanMasuk: '2',
                  isMasuk: true,
                  isPanjang: true,
                  onTap: () {},
                ),

                TampilanChat(
                  profile: 'BB',
                  background: kPrimaryColor,
                  username: 'Pak Bambang',
                  pesan: 'Terimakasih kembali kevin',
                  pesanMasuk: '1',
                  isMasuk: true,
                  isPanjang: false,
                  onTap: () {},
                ),

                TampilanChat(
                  profile: 'AE',
                  background: kCreamColor,
                  username: 'Bu Allea',
                  pesan: 'Selamat pagi ibu saya ingin bertanya tent...',
                  pesanMasuk: '2',
                  isMasuk: false,
                  isPanjang: true,
                  onTap: () {},
                ),

                TampilanChat(
                  profile: 'RY',
                  background: kPrimaryColor,
                  username: 'Pak Rayn',
                  pesan: 'Ya,ada apa kevin?',
                  pesanMasuk: '1',
                  isMasuk: true,
                  isPanjang: false,
                  onTap: () {
                    Navigator.pushNamed(context, '/main');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TampilanChat extends StatelessWidget {
  final String profile;
  final Color background;
  final String username;
  final String pesan;
  final String pesanMasuk;
  final bool isMasuk;
  final bool isPanjang;
  final Function() onTap;

  TampilanChat({
    required this.profile,
    required this.background,
    required this.username,
    required this.pesan,
    required this.pesanMasuk,
    required this.isMasuk,
    required this.isPanjang,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: 10,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/room-chat');
            },
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: background,
                  ),
                  child: Center(
                    child: Text(
                      profile,
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        username,
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        pesan,
                        style: blackTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: isPanjang == true ? 12 : 13,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      // Container(
                      //   width: 243,
                      //   height: 2,
                      //   color: kGreyColor,
                      // ),
                    ],
                  ),
                ),
                // Spacer(),
                Column(
                  children: [
                    Text(
                      '14.00',
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    isMasuk == true
                        ? ChatNumber(
                            pesanMasuk: pesanMasuk,
                          )
                        : Text('')
                  ],
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

class ChatNumber extends StatelessWidget {
  final String pesanMasuk;
  const ChatNumber({
    required this.pesanMasuk,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryColor,
      ),
      child: Center(
        child: Text(
          pesanMasuk,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}

class ChatPopUp extends StatefulWidget {
  const ChatPopUp({
    Key? key,
  }) : super(key: key);

  @override
  _ChatPopUpState createState() => _ChatPopUpState();
}

class _ChatPopUpState extends State<ChatPopUp> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'chat-pop',
      createRectTween: (begin, end) {
        return CustomRectTween(begin: begin, end: end);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          child: SizedBox(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Pilih Kontak',
                            style: primaryTextStyle,
                          ),
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.search,
                            color: kPrimaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.more_vert,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: kPrimaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 29,
                      vertical: 25,
                    ),
                    child: Column(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
