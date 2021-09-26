import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/chat_dialog_item.dart';

class RoomChat extends StatefulWidget {
  RoomChat({Key? key}) : super(key: key);

  @override
  _RoomChatState createState() => _RoomChatState();
}

class _RoomChatState extends State<RoomChat> {
  TextEditingController textEditingController = TextEditingController();
  bool isEmpty = true;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor,
              ),
              child: Center(
                child: Text(
                  'RY',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Pak Rayn',
                  style: whiteTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
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
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget textInputSection() {
      return Container(
        width: double.infinity,
        color: kWhiteColor,
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Row(
          children: [
            Container(
              width: 289,
              height: 37,
              margin: EdgeInsets.only(
                right: 4,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 9,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: kGreyColor,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_emote.png',
                    width: 20,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: textEditingController,
                      onChanged: (text) {
                        setState(() {
                          (text.isNotEmpty) ? isEmpty = false : isEmpty = true;
                        });
                      },
                      decoration: InputDecoration.collapsed(
                        hintText: 'Ketik disini',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icon_clip.png',
                    width: 14,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Image.asset(
                    'assets/icon_camera.png',
                    width: 17,
                  ),
                ],
              ),
            ),
            Container(
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,
              ),
              child: Center(
                child: Image.asset(
                  isEmpty ? 'assets/icon_mic.png' : 'assets/icon_sent.png',
                  width: isEmpty ? 9 : 12,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                date(),
                SizedBox(
                  height: 24,
                ),
                ChatDialogItem(
                  teks: 'Selamat siang pak saya kevin dari XI RPL 2',
                  waktu: '8.45',
                ),
                ChatDialogItem(
                  teks: 'ya,ada apa kevin?',
                  waktu: '09.30',
                  isSender: false,
                ),
                ChatDialogItem(
                  teks: 'ya',
                  waktu: '09.30',
                  isSender: false,
                ),
              ],
            ),
          ),
          textInputSection(),
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        child: header(),
        preferredSize: Size.fromHeight(60),
      ),
      backgroundColor: kWhiteColor,
      body: content(),
    );
  }
}
