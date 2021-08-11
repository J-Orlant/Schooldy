import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class JurusanItem extends StatelessWidget {
  final String jurusan;
  final Color color;
  final bool select;
  const JurusanItem({
    Key? key,
    required this.jurusan,
    required this.color,
    this.select = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (select) ? 1.0 : 0.5,
      child: Container(
        margin: EdgeInsets.only(right: 12),
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            Text(
              jurusan,
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
