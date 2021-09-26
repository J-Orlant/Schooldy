import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class RapotPage extends StatefulWidget {
  const RapotPage({Key? key}) : super(key: key);

  @override
  _RapotPageState createState() => _RapotPageState();
}

class _RapotPageState extends State<RapotPage> {
  String? _chosenValue;
  List<String> mapel = [
    'Pend. Agama ',
    'Pend. Pancasila\ndan Kewarganegaraan',
    'Bahasa Indonesia',
    'Matematika',
    'Sejarah Indonesia',
    'Bahasa Inggris',
    'Seni Budaya',
    'Pend. Jasmani',
    'Fisika',
    'Kimia',
    'Sistem Komputer',
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
              'Semester 1',
              'Semester 2',
              'Semester 3',
              'Semester 4',
              'Semester 5',
              'Semester 6',
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
              'Pilih Semester',
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
            Row(
              children: [
                Text(
                  'Penilaian Tengah Semester (PTS)',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            Text(
              'Nama Siswa : Kevin Saputra',
              style: blueTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
            Text(
              'Kelas/Semester : XI / 1',
              style: blueTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Tahun Pelajaran : 2021',
                    style: blueTextStyle.copyWith(
                      fontSize: 10,
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
                  horizontal: 15,
                  vertical: 12,
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
                  horizontal: 7,
                  vertical: 12,
                ),
                child: Text(
                  '75',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 12,
                ),
                child: Text(
                  '',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 12,
                ),
                child: Text(
                  '',
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
                  horizontal: 36,
                  vertical: 12,
                ),
                child: Text(
                  'Mata pelajaran',
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
                  horizontal: 7,
                  vertical: 12,
                ),
                child: Text(
                  'KKM',
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
                  horizontal: 7,
                  vertical: 12,
                ),
                child: Text(
                  'Nilai\nUlangan',
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
                  horizontal: 7,
                  vertical: 12,
                ),
                child: Text(
                  'Nilai\nAkhir',
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
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
            'Rapot Kelas XI',
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
