import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class NotificationItem extends StatelessWidget {
  final String name;
  final String message;
  final int bubble;
  const NotificationItem({
    required this.name,
    required this.message,
    this.bubble = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 15,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(
                  right: 10,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kDarkBlue,
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      message,
                      style: greyTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
          (bubble > 0)
              ? Positioned(
                  right: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kDarkBlue,
                    ),
                    child: Center(
                      child: Text(
                        bubble.toString(),
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
