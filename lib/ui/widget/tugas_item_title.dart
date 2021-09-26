import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class TugasItemTitle extends StatelessWidget {
  final String mapel;
  final String logo;
  final EdgeInsets margin;
  final bool isClicked;
  final Function() onPressed;
  const TugasItemTitle({
    required this.mapel,
    required this.logo,
    this.margin = EdgeInsets.zero,
    required this.onPressed,
    this.isClicked = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: kDarkBlue,
                  ),
                  child: Center(
                    child: Image.asset(
                      logo,
                      width: 15,
                      height: 15,
                    ),
                  ),
                ),
                Text(
                  mapel,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              (isClicked) ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
