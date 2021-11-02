import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/guru/detail_tugas_siswa.dart';

class SiswaTile extends StatelessWidget {
  final String name;
  final int nilai;
  final bool isDone;
  final bool isLate;
  const SiswaTile({
    Key? key,
    required this.name,
    this.isDone = false,
    this.nilai = 0,
    this.isLate = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String getInitials(String bankAccountName) => bankAccountName.isNotEmpty
        ? bankAccountName
            .trim()
            .split(RegExp(' +'))
            .map((s) => s[0])
            .take(2)
            .join()
        : '';

    return Container(
      margin: EdgeInsets.only(bottom: 28),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            margin: EdgeInsets.only(right: 18),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kDarkBlue,
            ),
            child: Center(
              child: Text(
                getInitials(name),
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: (isLate) ? Color(0xffFF738C) : kBlackColor,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          (isDone)
              ? GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailTugasSiswa(nama: name);
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 28,
                    height: 28,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kDarkBlue,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icon_done_tugas.png',
                        width: 14,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
          Text(
            (nilai == 0) ? '.../100' : '$nilai/100',
            style: blackTextStyle.copyWith(
              color: (isLate) ? Color(0xffFF738C) : kBlackColor,
              fontWeight: (nilai != 0) ? semiBold : regular,
            ),
          )
        ],
      ),
    );
  }
}
