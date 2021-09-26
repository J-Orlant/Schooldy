import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class StatistikItem extends StatelessWidget {
  final Color color;
  final double width;
  final String keterangan;
  const StatistikItem({
    required this.width,
    required this.color,
    required this.keterangan,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6),
      child: Row(
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 155,
            ),
            width: width,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: color,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            keterangan,
            style: blueTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
