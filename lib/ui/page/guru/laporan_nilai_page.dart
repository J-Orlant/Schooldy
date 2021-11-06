import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class LaporanNilaiPage extends StatefulWidget {
  const LaporanNilaiPage({Key? key}) : super(key: key);

  @override
  _LaporanNilaiPageState createState() => _LaporanNilaiPageState();
}

class _LaporanNilaiPageState extends State<LaporanNilaiPage> {
  String? _chosenValue;
  List<String> mapel = [
    'Alzki S',
    'Bizka A',
    'Casya R',
  ];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      Widget dropDownButton() {
        return Container(
          width: 110,
          height: 24,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kDarkBlue,
              boxShadow: [
                BoxShadow(
                  color: kBlackColor.withOpacity(0.25),
                  offset: Offset(0, 1),
                  blurRadius: 2,
                )
              ]),
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: DropdownButton<String>(
            dropdownColor: kDarkBlue,
            focusColor: kWhiteColor,
            style: whiteTextStyle,
            icon: Icon(Icons.keyboard_arrow_down),
            iconSize: 25,
            iconEnabledColor: kWhiteColor,
            isExpanded: true,
            underline: SizedBox(),
            value: _chosenValue,
            items: <String>[
              'RPL 1',
              'RPL 2',
              'RPL 3',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
              );
            }).toList(),
            hint: Text(
              'Kelas',
              style: whiteTextStyle.copyWith(
                fontSize: 10,
                fontWeight: medium,
              ),
            ),
            onChanged: (String? value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
        );
      }

      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Guru :  Bambang Sentosa',
              style: blueTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              'NIP : 0232438343',
              style: blueTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              'Mata Pelajaran : PBO',
              style: blueTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              'Semester : 1',
              style: blueTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'KKM : 80',
                    style: blueTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
                dropDownButton()
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      );
    }

    Widget table() {
      var listTable = mapel.map((data) {
        return TableRow(
          children: [
            TableCell(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Text(
                  data,
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 5,
                ),
                child: Text(
                  '80',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 5,
                ),
                child: Text(
                  '90',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 5,
                ),
                child: Text(
                  '80',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 5,
                ),
                child: Text(
                  '80',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 5,
                ),
                child: Text(
                  '95',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 5,
                ),
                child: Text(
                  '100',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      }).toList();
      listTable.insert(
        0,
        TableRow(
          children: [
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Text(
                  'Nama',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 5,
                ),
                child: Text(
                  'Tugas 1',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 5,
                ),
                child: Text(
                  'Tugas 2',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 7,
                ),
                child: Text(
                  'UH 1',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 7,
                ),
                child: Text(
                  'UH 2',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 10,
                ),
                child: Text(
                  'PAS',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 10,
                ),
                child: Text(
                  'UAS',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
      return Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kWhiteColor,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Table(
            defaultColumnWidth: IntrinsicColumnWidth(),
            border: TableBorder.all(
              color: kDarkBlue,
            ),
            children: listTable,
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: kWhiteColor,
          title: Text(
            'Laporan Nilai',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          iconTheme: IconThemeData(
            color: kBlackColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: 7,
              left: 11,
              right: 11,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 14,
            ),
            child: Column(
              children: [
                header(),
                table(),
              ],
            ),
          ),
        ));
  }
}
