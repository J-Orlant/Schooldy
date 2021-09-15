import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/chat_guru_item.dart';
import 'package:kksi/ui/widget/chat_murid_item.dart';

class RoomChat extends StatelessWidget {
  const RoomChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        height: 89,
        color: kPrimaryColor,
        padding: EdgeInsets.only(
          left: 47,
          right: 47,
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(
                right: 70,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor,
              ),
              child: Center(
                child: Text('RY',
                    style: blackTextStyle.copyWith(fontWeight: semiBold)),
              ),
            ),
            Expanded(
              child: Text(
                'Pak Rayn',
                style: whiteTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(
              Icons.more_vert,
              size: 30,
              color: kWhiteColor,
            ),
          ],
        ),
      );
    }

    Widget date() {
      return Column(
        children: [
          Container(
            width: 67,
            height: 19,
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xffA9C7FB),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                'Hari Ini',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          date(),
          ChatMurid(
            chat: "Selamat siang pak saya kevin dari XI RPL 2",
            time: '8.10',
          ),
          ChatGuru(
            chat: "Ya, Ada apa Kevin?",
            time: '8.12',
          ),
          ChatMurid(
            chat: "Saya mau tanya absen saya sudah\nmasuk belum ya?",
            time: '8.12',
            height: 63,
          ),
          ChatGuru(
            chat: "Sudah masuk ko",
            time: '8.13',
          ),
          ChatMurid(
            chat: "Baik pak, Terimakasih",
            time: '8.14',
            width: 176,
            height: 45,
          ),
          ChatGuru(
            chat: "Sip",
            time: '8.15',
            width: 70,
          ),
        ],
      ),
    );
  }
}
