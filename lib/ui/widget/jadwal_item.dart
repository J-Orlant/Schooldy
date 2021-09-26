import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class JadwalItem extends StatelessWidget {
  final String hari;
  final List<String> mapel;
  final List<String> waktu;
  final Color color;
  const JadwalItem({
    required this.hari,
    required this.mapel,
    this.waktu = const [
      '07.00 - 08.30',
      '08.45 - 10.15',
      '10.30 - 12.00',
    ],
    this.color = const Color(0xffF5F5DC),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 15,
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            child: Text(
              hari,
              style: blackTextStyle.copyWith(
                fontSize: 13,
                fontWeight: semiBold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 15,
              ),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: color,
              ),
              child: Column(
                children: mapel.map((data) {
                  int index = mapel.indexOf(data);
                  return Container(
                    margin: EdgeInsets.only(
                      bottom: (index == mapel.length - 1) ? 0 : 8,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            data,
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Text(
                          waktu[index],
                          style: greyTextStyle.copyWith(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
