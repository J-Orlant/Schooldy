// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian HEAD
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  top: 22,
                  bottom: 13,
                ),
                child: Text(
                  'Chat',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              // Bagian SEARCH
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Container(
                  height: 50,
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
              SizedBox(
                height: 16,
              ),
              // TampilanChat(),
              TampilanChat(
                profile: 'RN',
                background: CreamColor,
                username: 'Bu Rena',
                pesan: 'Coek',
                pesanMasuk: '2',
                isMasuk: false,
                isPanjang: false,
              ),
              SizedBox(
                height: 16,
              ),
              TampilanChat(
                profile: 'LS',
                background: CreamColor,
                username: 'Bu Lesa',
                pesan: 'Selamat siang kevin tolong untuk segera...',
                pesanMasuk: '2',
                isMasuk: true,
                isPanjang: true,
              ),
              SizedBox(
                height: 16,
              ),
              TampilanChat(
                profile: 'BB',
                background: kPrimaryColor,
                username: 'Pak Bambang',
                pesan: 'Terimakasih kembali kevin',
                pesanMasuk: '1',
                isMasuk: true,
                isPanjang: false,
              ),
              SizedBox(
                height: 16,
              ),
              TampilanChat(
                profile: 'AE',
                background: CreamColor,
                username: 'Bu Allea',
                pesan: 'Selamat pagi ibu saya ingin bertanya tent...',
                pesanMasuk: '2',
                isMasuk: false,
                isPanjang: true,
              ),
              SizedBox(
                height: 16,
              ),
              TampilanChat(
                profile: 'RY',
                background: kPrimaryColor,
                username: 'Pak Rayn',
                pesan: 'Ya,ada apa kevin?',
                pesanMasuk: '1',
                isMasuk: true,
                isPanjang: false,
              ),
              SizedBox(
                height: 16,
              ),
            ],
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

  TampilanChat({
    required this.profile,
    required this.background,
    required this.username,
    required this.pesan,
    required this.pesanMasuk,
    required this.isMasuk,
    required this.isPanjang,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: background,
            ),
            child: Center(
              child: Text(
                profile,
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
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
              ),
              Container(
                width: 243,
                height: 2,
                color: kGreyColor,
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(
                '14.00',
                style: blackTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 13,
                ),
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
      width: 28,
      height: 28,
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
