import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/statistik_item.dart';

class StatistikTile extends StatelessWidget {
  final String kelas;
  final List<dynamic> item1;
  final List<dynamic> item2;
  final List<dynamic> item3;
  final List<dynamic> item4;
  const StatistikTile({
    required this.kelas,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 117,
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            spreadRadius: 0,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 6,
                bottom: 6,
                left: 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Statistik Kelas $kelas',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  StatistikItem(
                    width: item1[0],
                    color: (item1[1] == true) ? kDarkBlue : kGreyColor,
                    keterangan: 'PTS',
                  ),
                  StatistikItem(
                    width: item2[0],
                    color: (item2[1] == true) ? kDarkBlue : kGreyColor,
                    keterangan: 'PAS',
                  ),
                  StatistikItem(
                    width: item3[0],
                    color: (item3[1] == true) ? kDarkBlue : kGreyColor,
                    keterangan: 'PTS',
                  ),
                  StatistikItem(
                    width: item4[0],
                    color: (item4[1] == true) ? kDarkBlue : kGreyColor,
                    keterangan: 'PAS',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          // NOTE: Keterangan
          Container(
            width: 125,
            padding: EdgeInsets.only(
              top: 18,
              bottom: 18,
              left: 10,
            ),
            decoration: BoxDecoration(
              color: kDarkBlue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_kenaikan.png',
                      width: 14,
                      height: 14,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Kenaikan Nilai\n+ 25%',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_penurunan.png',
                      width: 14,
                      height: 14,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Penurunan Nilai\n+ 25%',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
