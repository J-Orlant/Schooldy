import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class TugasItem extends StatelessWidget {
  final String materi;
  final String kelas;
  final String deadline;
  final bool missing;
  const TugasItem({
    required this.materi,
    required this.kelas,
    required this.deadline,
    this.missing = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                padding: EdgeInsets.only(
                  top:
                      MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
                              .padding
                              .top +
                          10,
                  left: 18,
                  right: 18,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Identitas
                        Column(
                          children: [
                            // Profil
                            Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPrimaryColor,
                              ),
                              child: Center(
                                child: Text(
                                  'RY',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            // Nama
                            Text(
                              'Ryan S.pd',
                              style: blackTextStyle,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Matematika',
                                style: blueTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Tugas Persamaan Kuadrat',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                'Tenggat : Senin, 11.59 PM',
                                style: blackTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Text(
                        'Selamat siang berikut adalah tugas mengenai persamaan kuadrat',
                        style: blackTextStyle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(),
                      child: Text(
                        'Lampiran',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 17,
                        vertical: 6,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: kGreyColor,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_lampiran.png',
                              width: 18,
                              height: 18,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Tugas - Persamaan kuadrat',
                                  style: blackTextStyle.copyWith(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    // pengumpulan
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kGreyColor,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Icon(
                                          Icons.photo,
                                          size: 40,
                                          color: kBlackColor.withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '12-07-21.jpg',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: light,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: -10,
                                  right: -10,
                                  child: IconButton(
                                    icon: Icon(Icons.close),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: kDarkBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            '+ Tambah Tugas',
                            style:
                                whiteTextStyle.copyWith(fontWeight: semiBold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: kDarkBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () {},
                        child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.upload,
                                  color: kWhiteColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Upload',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kDarkBlue,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icon_to-do.png',
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          materi,
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                            color: (missing) ? kBlackColor : Colors.red,
                          ),
                        ),
                        Text(
                          kelas,
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                deadline,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
