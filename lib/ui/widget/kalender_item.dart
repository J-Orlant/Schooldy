import 'package:flutter/material.dart';
import 'package:kksi/providers/kalender_app.dart';
import 'package:kksi/shared/theme.dart';
import 'package:provider/provider.dart';

class KalenderIitem extends StatelessWidget {
  final int date;
  final String day;
  final int index;
  const KalenderIitem({
    Key? key,
    required this.date,
    required this.day,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Kalender kalender = Provider.of<Kalender>(context);
    return Container(
      padding: EdgeInsets.only(
        top: 9,
        left: 10,
        right: 10,
        bottom: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: (index == kalender.currentIndex) ? kWhiteColor : kTransparent,
      ),
      child: Column(
        children: [
          Text(
            date.toString(),
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
              color: (index == kalender.currentIndex) ? kDarkBlue : kWhiteColor,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            day,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
              color: (index == kalender.currentIndex) ? kDarkBlue : kWhiteColor,
            ),
          ),
          Container(
            width: 8,
            height: 8,
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color:
                  (index == kalender.currentIndex) ? kDarkBlue : kTransparent,
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }
}
