import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:kksi/models/agenda_models.dart';
import 'package:kksi/providers/absensi_app.dart';
import 'package:kksi/providers/camera_save.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/siswa/absen_success.dart';
import 'package:kksi/ui/widget/keterangan_item.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AbsenPage extends StatefulWidget {
  final AgendaModels aModels;
  AbsenPage({
    required this.aModels,
    Key? key,
  }) : super(key: key);

  @override
  State<AbsenPage> createState() => _AbsenPageState();
}

class _AbsenPageState extends State<AbsenPage> {
  int _currentIndex = 0;
  int endTime = DateTime.now().millisecondsSinceEpoch + 10000 * 700;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return SafeArea(
        child: Container(
          height: 75,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kBlackColor.withOpacity(0.25),
                offset: Offset(0, 1),
                blurRadius: 5,
                spreadRadius: 0,
              ),
            ],
            color: kDarkBlue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/btn_batal.png',
                  width: 30,
                ),
              ),
              Text(
                'Absen Kehadiran',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
              Consumer<CameraSave>(
                builder: (context, camerasave, _) => Consumer<Absensi>(
                  builder: (context, absensi, _) => GestureDetector(
                    onTap: () {
                      if (_currentIndex == 1 || _currentIndex == 2) {
                        if (camerasave.capturedImage.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('Absen Gagal, Harap memberikan bukti'),
                              backgroundColor: Colors.red.shade200,
                            ),
                          );
                        } else {
                          absensi.isAbsen = 'absen';
                          absensi.id = widget.aModels.id;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AbsenSuccess(),
                            ),
                          );
                        }
                      } else {
                        absensi.isAbsen = 'absen';
                        absensi.id = widget.aModels.id;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AbsenSuccess(),
                          ),
                        );
                      }
                    },
                    child: Image.asset(
                      'assets/btn_ok.png',
                      width: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Row(
        children: [
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: kDarkBlue,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                'JA',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Justin Anditiaman',
              style: blueTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Batas Abseen',
                style: blueTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 12,
                ),
              ),
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kDarkBlue,
                ),
                child: CountdownTimer(
                  endTime: endTime,
                  widgetBuilder: (context, CurrentRemainingTime? time) {
                    if (time == null) {
                      return Text(
                        'Expired',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      );
                    } else {
                      return Text(
                        '${time.hours} : ${time.min} : ${time.sec}',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          )
        ],
      );
    }

    Widget keterangan() {
      return Container(
        margin: EdgeInsets.only(
          top: 33,
          bottom: 34,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Keterangan',
              style: blueTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: KeteranganItem(
                    teks: 'Hadir',
                    index: 0,
                    isSelected: (_currentIndex == 0),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: KeteranganItem(
                    teks: 'Izin',
                    index: 1,
                    isSelected: (_currentIndex == 1),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: KeteranganItem(
                    teks: 'Sakit',
                    index: 2,
                    isSelected: (_currentIndex == 2),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget deskripsi() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Keterangan',
            style: blueTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: kDarkBlue,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 47,
                    decoration: BoxDecoration(
                      color: kDarkBlue,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Suji Yuji S.pd ',
                            style: whiteTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'Teks Pidato',
                            style: whiteTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 9,
                    ),
                    child: InkWell(
                      onTap: () async {
                        const url = 'https://meet.google.com/nmb-yakz-vxf';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text(
                        'https://meet.google.com/nmb-yakz-vxf',
                        style: blueTextStyle.copyWith(
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget bukti() {
      return Container(
        margin: EdgeInsets.only(top: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bukti',
              style: blueTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Consumer<CameraSave>(builder: (context, cameraSave, _) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/camera-page').then((value) {
                    setState(() {});
                  });
                  cameraSave.index = _currentIndex;
                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: kDarkBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: kWhiteColor,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Tambahkan Bukti',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
            SizedBox(
              height: 22,
            ),
            Consumer<CameraSave>(builder: (context, cameraSave, _) {
              if (cameraSave.capturedImage.isEmpty) {
                return Container(
                  width: double.infinity,
                  height: 229,
                  margin: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  color: kGreyColor,
                  child: Center(
                    child: Icon(
                      Icons.camera_alt,
                      color: kBlackColor,
                      size: 40,
                    ),
                  ),
                );
              } else {
                return Container(
                  width: double.infinity,
                  height: 229,
                  margin: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(cameraSave.capturedImage.last),
                    ),
                  ),
                );
              }
            }),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        child: appbar(),
        preferredSize: Size.fromHeight(75),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 28,
        ),
        children: [
          header(),
          keterangan(),
          deskripsi(),
          (_currentIndex == 1 || _currentIndex == 2) ? bukti() : SizedBox(),
        ],
      ),
    );
  }
}
