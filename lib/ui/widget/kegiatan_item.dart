import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/kegiatan_tile.dart';

class KegiatanItem extends StatelessWidget {
  final List<KegiatanTile> kegiatan;
  const KegiatanItem({
    Key? key,
    required this.kegiatan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> waktu = [
      '07:00',
      '08:00',
      '09:00',
      '10:00',
      '11:00',
      '12:00',
      '13:00',
      '14:00',
      '15:00',
      '16:00',
    ];
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 42,
        left: 26,
        right: defaultMargin,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: waktu
                .map(
                  (hari) => Container(
                    margin: EdgeInsets.only(
                      bottom: 50,
                    ),
                    child: Text(
                      hari,
                      style: blueTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ...kegiatan,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
