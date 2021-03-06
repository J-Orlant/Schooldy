import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class AgendaItem extends StatelessWidget {
  final String id;
  final String profil;
  final String mapel;
  final String materi;
  final Color color;
  final String status;
  final String time;

  const AgendaItem({
    Key? key,
    required this.id,
    required this.profil,
    required this.mapel,
    required this.materi,
    required this.color,
    required this.status,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (status == 'mendatang' || status == 'alpha') ? 0.5 : 1.0,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 0,
        ),
        child: Material(
          color: (status == 'absen') ? kDarkBlue : kWhiteColor,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            padding: EdgeInsets.only(
              top: 12,
              right: defaultMargin,
              left: defaultMargin,
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffC4C4C4).withOpacity(0.5),
                      width: 2,
                    ),
                  ),
                ),
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
                              color: (status == 'absen')
                                  ? kWhiteColor
                                  : (status == 'alpha')
                                      ? Color(0xffFF738C)
                                      : kPrimaryColor,
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
                              color: (status == 'absen')
                                  ? kWhiteColor
                                  : (status == 'alpha')
                                      ? Color(0xffFF738C)
                                      : kBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      time,
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        color: (status == 'absen')
                            ? kWhiteColor
                            : (status == 'alpha')
                                ? Color(0xffFF738C)
                                : kGreyColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
