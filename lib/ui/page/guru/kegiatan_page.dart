import 'package:flutter/material.dart';
import 'package:kksi/providers/kalender_app.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/kalender_item.dart';
import 'package:kksi/ui/widget/kegiatan_item.dart';
import 'package:kksi/ui/widget/kegiatan_tile.dart';
import 'package:provider/provider.dart';

class KegiatanPage extends StatefulWidget {
  const KegiatanPage({Key? key}) : super(key: key);

  @override
  _KegiatanPageState createState() => _KegiatanPageState();
}

class _KegiatanPageState extends State<KegiatanPage> {
  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return SafeArea(
        child: Container(
          width: double.infinity,
          height: 220,
          padding: EdgeInsets.symmetric(
            vertical: 33,
            horizontal: 26,
          ),
          decoration: BoxDecoration(
            color: kDarkBlue,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                color: kBlackColor.withOpacity(0.25),
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kWhiteColor,
                      size: 18,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Oktober',
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Consumer<Kalender>(builder: (context, kalender, _) {
                return Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: [
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 0;
                        },
                        child: KalenderIitem(
                          date: 19,
                          day: 'SEN',
                          index: 0,
                          margin: EdgeInsets.only(right: 25),
                          isKegiatan: true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 1;
                        },
                        child: KalenderIitem(
                          date: 20,
                          day: 'SEL',
                          index: 1,
                          margin: EdgeInsets.only(right: 25),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 2;
                        },
                        child: KalenderIitem(
                          date: 21,
                          day: 'RAB',
                          index: 2,
                          margin: EdgeInsets.only(right: 25),
                          isKegiatan: true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 3;
                        },
                        child: KalenderIitem(
                          date: 22,
                          day: 'KAM',
                          index: 3,
                          margin: EdgeInsets.only(right: 25),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          kalender.isClicked = 4;
                        },
                        child: KalenderIitem(
                          date: 23,
                          day: 'JUM',
                          index: 4,
                          margin: EdgeInsets.only(right: 25),
                          isKegiatan: true,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: appbar(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: KegiatanItem(
          kegiatan: [
            KegiatanTile(
              title: 'Jadwal Mengajar',
              subtitle: 'Kelas X RPL 1',
            ),
            KegiatanTile(
              title: 'Jadwal Mengajar',
              subtitle: 'Kelas X BC 2',
            ),
            KegiatanTile(
              title: 'Jadwal Mengajar',
              subtitle: 'Kelas XI MM 1',
            ),
            KegiatanTile(
              title: 'Rapot Kelulusan',
              subtitle: 'Ruangan A Lantai 1',
              isDetail: true,
              detail: '',
            ),
          ],
        ),
      ),
    );
  }
}
