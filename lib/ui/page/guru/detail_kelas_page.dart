import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/page/animation/custom_rect_tween.dart';
import 'package:kksi/ui/page/animation/hero_dialog_route.dart';
import 'package:kksi/ui/page/guru/detail_tugas_page.dart';
import 'package:kksi/ui/widget/tugas_guru_item.dart';

class DetailKelasPage extends StatelessWidget {
  const DetailKelasPage({Key? key}) : super(key: key);

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
                onTap: () {},
                judulTugas: 'Teks Eksplanasi',
              ),
            ],
          ),
          TugasGuruItem(
            bulan: 'November',
            tugas: [
              TugasGuruTile(
                onTap: () {},
                judulTugas: 'Ulangan Harian 1',
              ),
              TugasGuruTile(
                onTap: () {},
                judulTugas: 'Cerpen',
              ),
            ],
          ),
          TugasGuruItem(
            bulan: 'Desember',
            tugas: [
              TugasGuruTile(
                onTap: () {},
                judulTugas: 'Surat Lamaran',
              ),
              TugasGuruTile(
                onTap: () {},
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
          'Kelas X RPL 1',
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

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'link-tugas',
      createRectTween: (begin, end) {
        return CustomRectTween(begin: begin, end: end);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          child: SizedBox(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
