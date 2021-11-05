import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class KegiatanTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String detail;
  final bool isDetail;
  const KegiatanTile({
    required this.title,
    required this.subtitle,
    this.detail = '',
    this.isDetail = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21, bottom: 48),
      padding: EdgeInsets.only(
        top: 17,
        left: 16,
        right: 16,
        bottom: 17,
      ),
      decoration: BoxDecoration(
        color: kDarkBlue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 28,
                height: 28,
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWhiteColor,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/icon_kelas.png',
                    width: 21,
                    color: kDarkBlue,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    subtitle,
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                ],
              ),
            ],
          ),
          (isDetail)
              ? Container(
                  height: 150,
                  margin: EdgeInsets.only(left: 49),
                  padding: EdgeInsets.only(),
                  child: Text(
                    'Rapat kelulusan kelas 12 dan pembahasan mengenai rapot kenaikan kelas 11.',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
