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
      height: 44,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kDarkBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
