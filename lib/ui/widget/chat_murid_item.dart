import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class ChatMurid extends StatelessWidget {
  final String chat;
  final String time;
  final double width;
  final double height;
  const ChatMurid({
    required this.chat,
    required this.time,
    this.height = 44,
    this.width = 270,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: width,
            height: height,
            margin: EdgeInsets.only(top: 18, right: 24),
            padding: EdgeInsets.only(
              top: 8,
              right: 10,
              left: 8,
              bottom: 4,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17),
                topRight: Radius.circular(17),
                bottomLeft: Radius.circular(17),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    chat,
                    style: blackTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    time,
                    style: blackTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 9,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
