import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class ProgramTahunanTile extends StatelessWidget {
  final String waktu;
  final String konten;
  final Color color;
  const ProgramTahunanTile({
    required this.konten,
    required this.waktu,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 22),
      child: Row(
        children: [
          Container(
            height: 37,
            width: 7,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffEBEFF1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    waktu,
                    style: blueTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(
                      konten,
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                        color: Color(0xff898989),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
