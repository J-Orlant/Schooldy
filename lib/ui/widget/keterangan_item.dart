import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class KeteranganItem extends StatelessWidget {
  final String teks;
  final int index;
  final bool isSelected;
  const KeteranganItem({
    required this.teks,
    required this.index,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: (isSelected) ? kDarkBlue : kGreyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            margin: EdgeInsets.only(
              right: 15,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              shape: BoxShape.circle,
            ),
          ),
          Text(
            teks,
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
