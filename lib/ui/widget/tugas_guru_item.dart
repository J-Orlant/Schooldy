import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class TugasGuruItem extends StatelessWidget {
  final String bulan;
  final List<TugasGuruTile> tugas;
  const TugasGuruItem({
    Key? key,
    required this.bulan,
    required this.tugas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bulan,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: kDarkBlue,
                  size: 30,
                ),
              )
            ],
          ),
          SizedBox(
            height: 13,
          ),
          ...tugas,
        ],
      ),
    );
  }
}

class TugasGuruTile extends StatelessWidget {
  final String judulTugas;
  Function onTap;
  TugasGuruTile({
    Key? key,
    required this.judulTugas,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 14,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(0, 1),
              color: kBlackColor.withOpacity(0.25),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kDarkBlue,
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon_to-do.png',
                  width: 15,
                ),
              ),
            ),
            Text(
              judulTugas,
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
