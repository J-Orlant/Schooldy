import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class KelasItem extends StatelessWidget {
  final String kelas;
  final String image;
  final String tahun;
  const KelasItem({
    Key? key,
    required this.image,
    required this.kelas,
    this.tahun = '2021 - 2022',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18),
      margin: EdgeInsets.only(
        bottom: 34,
        left: defaultMargin,
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kDarkBlue,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kelas ' + kelas,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  tahun,
                  style: whiteTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            image,
            width: 117,
          ),
        ],
      ),
    );
  }
}
