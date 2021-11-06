import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class LaporanKehadiranPage extends StatefulWidget {
  const LaporanKehadiranPage({Key? key}) : super(key: key);

  @override
  _LaporanKehadiranPageState createState() => _LaporanKehadiranPageState();
}

class _LaporanKehadiranPageState extends State<LaporanKehadiranPage> {
  String? _chosenValue;
  int _nomor = 0;
  List<String> siswa = [
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
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Semester : 1',
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

    Widget table2() {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Table(
                  border: TableBorder(
                    top: BorderSide(color: kDarkBlue, width: 0.5),
                    bottom: BorderSide(color: kDarkBlue, width: 0.5),
                    left: BorderSide(color: kDarkBlue, width: 0.5),
                    right: BorderSide(color: kDarkBlue, width: 0.5),
                    verticalInside: BorderSide(color: kDarkBlue, width: 0.2),
                    horizontalInside: BorderSide(color: kDarkBlue, width: 0.2),
                  ),
                  columnWidths: {
                    1: FractionColumnWidth(.5),
                    2: FractionColumnWidth(.5)
                  },
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 1,
                              vertical: 1,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Bulan: Oktober',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Pertemuan Ke',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Table(
                  border: TableBorder(
                    top: BorderSide(
                      color: kDarkBlue,
                      width: 0.3,
                    ),
                    left: BorderSide(
                      color: kDarkBlue,
                      width: 0.5,
                    ),
                    right: BorderSide(
                      color: kDarkBlue,
                      width: 0.5,
                    ),
                    bottom: BorderSide(
                      color: kDarkBlue,
                      width: 0.5,
                    ),
                    verticalInside: BorderSide(color: kDarkBlue, width: 0.2),
                    horizontalInside: BorderSide(color: kDarkBlue, width: 1),
                  ),
                  columnWidths: {
                    0: FractionColumnWidth(.1),
                    1: FractionColumnWidth(.4),
                    2: FractionColumnWidth(.1),
                    3: FractionColumnWidth(.1),
                    4: FractionColumnWidth(.1),
                    6: FractionColumnWidth(.2),
                  },
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'NO',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Nama Siwa',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '1',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '2',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '3',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '% Hadir',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '1',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Alzki S',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'S',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '80%',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '2',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Bizka A',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '100%',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '3',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Casya R',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'I',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '80%',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '4',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Dama D',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'S',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'H',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    '80%',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    // NOTE: TABLE LAIN
    // Widget table() {
    //   var listTable = siswa.map((data) {
    //     var index = siswa.indexOf(data) + 1;
    //     return TableRow(
    //       children: [
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               index.toString(),
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           child: Container(
    //             alignment: Alignment.centerLeft,
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 10,
    //               vertical: 10,
    //             ),
    //             child: Text(
    //               data,
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               '80',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               '90',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               '80',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               '80',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               '95',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               '100',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ),
    //       ],
    //     );
    //   }).toList();
    //   listTable.insert(
    //     0,
    //     TableRow(
    //       children: [
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 7,
    //               vertical: 7,
    //             ),
    //             child: Text(
    //               'No',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 10,
    //               vertical: 10,
    //             ),
    //             child: Text(
    //               'Nama',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               'Tugas 1',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 12,
    //               ),
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 4,
    //               vertical: 5,
    //             ),
    //             child: Text(
    //               'Tugas 2',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 10,
    //               ),
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 7,
    //               vertical: 7,
    //             ),
    //             child: Text(
    //               'UH 1',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 10,
    //               ),
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 7,
    //               vertical: 7,
    //             ),
    //             child: Text(
    //               'UH 2',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 10,
    //               ),
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 7,
    //               vertical: 10,
    //             ),
    //             child: Text(
    //               'PAS',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 10,
    //               ),
    //             ),
    //           ),
    //         ),
    //         TableCell(
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 7,
    //               vertical: 10,
    //             ),
    //             child: Text(
    //               'UAS',
    //               style: blueTextStyle.copyWith(
    //                 fontWeight: medium,
    //                 fontSize: 10,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: 10,
    //     ),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(12),
    //       color: kWhiteColor,
    //     ),
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Table(
    //         defaultColumnWidth: IntrinsicColumnWidth(),
    //         border: TableBorder.all(
    //           color: kDarkBlue,
    //         ),
    //         children: listTable,
    //       ),
    //     ),
    //   );
    // }

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
                table2(),
              ],
            ),
          ),
        ));
  }
}
