import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class AgendaItem extends StatelessWidget {
  final String id;
  final String profil;
  final String mapel;
  final String materi;
  final Color color;
  final bool expired;

  const AgendaItem({
    Key? key,
    required this.id,
    required this.profil,
    required this.mapel,
    required this.materi,
    required this.color,
    required this.expired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (expired) ? 0.5 : 1.0,
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xffC4C4C4).withOpacity(0.5),
                width: 2,
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Row(
              children: [
                // NOTE: Profil
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                  child: Center(
                    child: Text(
                      profil,
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mapel,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        materi,
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '9:00 - 10.30',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
