import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class KontakTile extends StatelessWidget {
  final String inisial;
  final String nama;
  const KontakTile({
    required this.inisial,
    required this.nama,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            margin: EdgeInsets.only(
              right: 13,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kWhiteColor,
            ),
            child: Center(
              child: Text(
                inisial.toUpperCase(),
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              nama,
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          ),
          Icon(
            Icons.add,
            color: kWhiteColor,
          )
        ],
      ),
    );
  }
}
