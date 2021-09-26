import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class DataDiriItem extends StatelessWidget {
  final String title;
  final String data;
  final bool isSubtitle;
  const DataDiriItem({
    required this.title,
    this.data = '',
    this.isSubtitle = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 6,
      ),
      padding: EdgeInsets.only(
        left: 6,
        right: 6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: (isSubtitle) ? 12 : 6,
              ),
              child: Text(
                title,
                style: blackTextStyle.copyWith(fontSize: 12),
              ),
            ),
          ),
          Expanded(
            child: Text(
              (data != '') ? ':  $data' : '',
              style: blackTextStyle.copyWith(fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
