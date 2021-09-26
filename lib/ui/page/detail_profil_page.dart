import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/data_diri_item.dart';

class DetailProfilPage extends StatelessWidget {
  const DetailProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget sectionPhoto() {
      return Container(
        margin: EdgeInsets.only(
          top: 13,
          bottom: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: kDarkBlue,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  'KS',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
            Text(
              'kevinsaputra2618.rpl1@gmail.com',
              style: blackTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    Widget dataSiswa() {
      return Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 12,
              ),
              margin: EdgeInsets.only(bottom: 10),
              width: double.infinity,
              color: kGreyColor,
              child: Text(
                'Data Siswa'.toUpperCase(),
                style: greyTextStyle.copyWith(
                  color: Color(0xffA1A1A1),
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
            DataDiriItem(
              title: 'Nama Lengkap Siswa',
              data: 'Kevin Saputra',
            ),
            DataDiriItem(
              title: 'Nomor induk',
              data: '83912',
            ),
            DataDiriItem(
              title: 'Tempat lahir',
              data: 'Jakarta',
            ),
            DataDiriItem(
              title: 'Tanggal lahir',
              data: '12 Februari 2003',
            ),
            DataDiriItem(
              title: 'Jenis kelamin',
              data: 'Laki - laki',
            ),
            DataDiriItem(
              title: 'Agama',
              data: 'Islam',
            ),
            DataDiriItem(
              title: 'Anak ke',
              data: '1',
            ),
            DataDiriItem(
              title: 'Alamat siswa',
              data: 'Jl. Perjuangan',
            ),
            DataDiriItem(
              title: 'No telp. rumah/hp',
              data: '0837235224154',
              isSubtitle: true,
            ),
            DataDiriItem(
              title: 'Alamat email',
              data: 'kevinsaputra21@gmail.com',
              isSubtitle: true,
            ),
          ],
        ),
      );
    }

    Widget dataPendukung() {
      return Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 12,
              ),
              margin: EdgeInsets.only(
                bottom: 10,
                top: 6,
              ),
              width: double.infinity,
              color: kGreyColor,
              child: Text(
                'data pendukung'.toUpperCase(),
                style: greyTextStyle.copyWith(
                  color: Color(0xffA1A1A1),
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
            DataDiriItem(
              title: 'Nama orang tua',
            ),
            DataDiriItem(
              title: 'Ayah',
              data: 'Budi Nugraha',
              isSubtitle: true,
            ),
            DataDiriItem(
              title: 'Ibu',
              data: 'Yati Pertiwi',
              isSubtitle: true,
            ),
            DataDiriItem(
              title: 'Alamat orang tua',
              data: 'Jl. Perjuangan',
              isSubtitle: true,
            ),
            SizedBox(
              height: 5,
            ),
            DataDiriItem(
              title: 'Pekerjaan orang tua',
            ),
            DataDiriItem(
              title: 'Ayah',
              data: 'Pengusaha',
              isSubtitle: true,
            ),
            DataDiriItem(
              title: 'Ibu',
              data: 'Ibu Rumah Tangga',
              isSubtitle: true,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'Identitas Siswa',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        iconTheme: IconThemeData(
          color: kBlackColor,
        ),
      ),
      body: ListView(
        children: [
          sectionPhoto(),
          dataSiswa(),
          dataPendukung(),
        ],
      ),
    );
  }
}
