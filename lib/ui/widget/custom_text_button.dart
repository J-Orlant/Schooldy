import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class CustomTextButton extends StatelessWidget {
  final EdgeInsets margin;
  final String title;
  final Function() onPressed;

  const CustomTextButton({
    Key? key,
    required this.margin,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Color(0xff73A5FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 21,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
