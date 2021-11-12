import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/animation/custom_rect_tween.dart';
import 'package:kksi/ui/page/animation/hero_dialog_route.dart';
import 'package:kksi/ui/page/guru/detail_tugas_page.dart';
import 'package:kksi/ui/widget/tugas_guru_item.dart';

class DetailKelasPage extends StatelessWidget {
  final String kelas;
  const DetailKelasPage({
    required this.kelas,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Column(
        children: [
          TugasGuruItem(
            bulan: 'Oktober',
            tugas: [
              TugasGuruTile(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => DetailTugasPage(),
                    ),
                  );
                },
                judulTugas: 'Teks Pidato',
              ),
              TugasGuruTile(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => DetailTugasPage(),
                    ),
                  );
                },
                judulTugas: 'Teks Eksplanasi',
              ),
            ],
          ),
          TugasGuruItem(
            bulan: 'November',
            tugas: [
              TugasGuruTile(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => DetailTugasPage(),
                    ),
                  );
                },
                judulTugas: 'Ulangan Harian 1',
              ),
              TugasGuruTile(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => DetailTugasPage(),
                    ),
                  );
                },
                judulTugas: 'Cerpen',
              ),
            ],
          ),
          TugasGuruItem(
            bulan: 'Desember',
            tugas: [
              TugasGuruTile(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => DetailTugasPage(),
                    ),
                  );
                },
                judulTugas: 'Surat Lamaran',
              ),
              TugasGuruTile(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => DetailTugasPage(),
                    ),
                  );
                },
                judulTugas: 'Proposal',
              ),
            ],
          ),
        ],
      );
    }

    Widget addTugasButton() {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            HeroDialogRoute(
              builder: (context) => Center(
                child: AddTugas(),
              ),
            ),
          );
        },
        child: Hero(
          tag: 'link-tugas',
          child: Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: kDarkBlue),
            child: Center(
              child: Icon(
                Icons.add,
                color: kWhiteColor,
                size: 30,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        centerTitle: true,
        elevation: 2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kDarkBlue,
          ),
        ),
        title: Text(
          'Kelas $kelas',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
      floatingActionButton: addTugasButton(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 32,
        ),
        children: [
          content(),
        ],
      ),
    );
  }
}

class AddTugas extends StatefulWidget {
  const AddTugas({
    Key? key,
  }) : super(key: key);

  @override
  _AddTugasState createState() => _AddTugasState();
}

class _AddTugasState extends State<AddTugas> {
  bool show = false;

  TextEditingController deskripsiController =
      TextEditingController(text: 'Deskripsi Tugas');
  TextEditingController judulController = TextEditingController(text: '');
  var focusNode = FocusNode(canRequestFocus: true);

  // NOTE: DateTime
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      initialDate: selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
      context: context,
      helpText: 'Pilih Tenggat Waktu',
      cancelText: 'Batal',
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
    judulController.dispose();
    deskripsiController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget judulMateri() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: defaultMargin,
          bottom: 18,
        ),
        decoration: BoxDecoration(
          color: kDarkBlue,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Text(
              'BAHASA INDONESIA',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            Stack(
              children: [
                TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Judul Materi',
                    hintStyle: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  cursorColor: kWhiteColor,
                  controller: judulController,
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                  focusNode: focusNode,
                ),
                Positioned(
                  right: 5,
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).requestFocus(focusNode);
                    },
                    child: Icon(
                      Icons.edit,
                      color: kWhiteColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget tenggat() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 4,
          bottom: 6,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 5,
              color: kBlackColor.withOpacity(0.25),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tenggat : ' + '${selectedDate.toLocal()}'.split(' ')[0],
              style: blueTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 12,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Icon(
                Icons.calendar_today,
                color: kDarkBlue,
              ),
            )
          ],
        ),
      );
    }

    Widget deskripsiTugas() {
      Widget btnTambahLampiran() {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kDarkBlue,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(
                Icons.add,
                color: kDarkBlue,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Tambah Lampiran',
                    style: blueTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Container(
              height: 240,
              child: TextField(
                maxLines: 11,
                decoration: InputDecoration.collapsed(
                  hintText: 'Deskripsi Tugas',
                  hintStyle: blueTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                  hintTextDirection: TextDirection.ltr,
                ),
                textAlign: TextAlign.center,
                focusNode: FocusNode(),
              ),
            ),
            btnTambahLampiran(),
          ],
        ),
      );
    }

    return Hero(
      tag: 'link-tugas',
      createRectTween: (begin, end) {
        return CustomRectTween(begin: begin, end: end);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          child: SizedBox(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  judulMateri(),
                  tenggat(),
                  deskripsiTugas(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
