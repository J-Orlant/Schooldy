import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class ChatGuru extends StatelessWidget {
  final String chat;
  final String time;
  final double width;
  const ChatGuru({
    required this.chat,
    required this.time,
    this.width = 151,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 44,
          margin: EdgeInsets.only(top: 18, left: 24),
          padding: EdgeInsets.only(
            top: 8,
            left: 8,
            right: 10,
            bottom: 4,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(17),
              topRight: Radius.circular(17),
              bottomRight: Radius.circular(17),
            ),
            boxShadow: [
              BoxShadow(
                color: kBlackColor.withOpacity(0.25),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(1, 3),
              ),
            ],
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
              Spacer(),
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
    );
  }
}
