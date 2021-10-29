import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class GroupClassItem extends StatelessWidget {
  final String kelas;
  final int index;
  final bool isClicked;
  const GroupClassItem({
    Key? key,
    required this.kelas,
    required this.index,
    required this.isClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (isClicked) ? 1 : 0.5,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kDarkBlue,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icon_groupClass.png',
              width: 26,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              kelas,
              style: whiteTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              width: 6,
            )
          ],
        ),
      ),
    );
  }
}
