import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class ChatDialogItem extends StatelessWidget {
  final String teks;
  final String waktu;
  final bool isSender;
  const ChatDialogItem({
    required this.teks,
    required this.waktu,
    this.isSender = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              padding: EdgeInsets.only(
                top: 8,
                right: 10,
                left: 8,
                bottom: 4,
              ),
              margin: EdgeInsets.only(
                bottom: 16,
                left: defaultMargin,
                right: defaultMargin,
              ),
              decoration: BoxDecoration(
                color: isSender ? kPrimaryColor : kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 17 : 0),
                  topRight: Radius.circular(17),
                  bottomLeft: Radius.circular(17),
                  bottomRight: Radius.circular(isSender ? 0 : 17),
                ),
                boxShadow: [
                  isSender
                      ? BoxShadow()
                      : BoxShadow(
                          color: kBlackColor.withOpacity(0.25),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                        ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 25, bottom: 12),
                        child: Text(
                          teks,
                          style: blackTextStyle.copyWith(
                            fontWeight: regular,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Text(
                          waktu,
                          style: blackTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 8,
                          ),
                          textAlign: isSender ? TextAlign.end : TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
