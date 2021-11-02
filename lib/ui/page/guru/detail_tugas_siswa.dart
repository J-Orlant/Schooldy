import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class DetailTugasSiswa extends StatefulWidget {
  final String nama;
  const DetailTugasSiswa({
    required this.nama,
    Key? key,
  }) : super(key: key);

  @override
  State<DetailTugasSiswa> createState() => _DetailTugasSiswaState();
}

class _DetailTugasSiswaState extends State<DetailTugasSiswa> {
  @override
  Widget build(BuildContext context) {
    List galleryItems = <String>[
      'assets/tugas_siswa1.jpeg',
      'assets/tugas_siswa2.jpeg',
    ];
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kWhiteColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kDarkBlue,
          ),
        ),
        elevation: 2,
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.nama,
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kDarkBlue,
              ),
              child: Text(
                '2 Lampiran',
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: PhotoViewGallery.builder(
          scrollDirection: Axis.vertical,
          scrollPhysics: const BouncingScrollPhysics(),
          builder: (BuildContext context, int index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(galleryItems[index]),
              initialScale: PhotoViewComputedScale.contained,
              heroAttributes:
                  PhotoViewHeroAttributes(tag: galleryItems[index] + '2'),
            );
          },
          itemCount: galleryItems.length,
          loadingBuilder: (context, event) => Center(
            child: Container(
              width: 20.0,
              height: 20.0,
              child: CircularProgressIndicator(
                value: event == null ? 0 : event.cumulativeBytesLoaded / 1,
              ),
            ),
          ),
          backgroundDecoration: BoxDecoration(
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
