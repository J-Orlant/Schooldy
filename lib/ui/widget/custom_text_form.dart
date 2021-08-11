import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class CustomTextForm extends StatelessWidget {
  final String hint;
  final Icon icon;
  final bool obsecure;

  const CustomTextForm({
    Key? key,
    required this.hint,
    this.obsecure = false,
    required this.icon,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
      ),
      child: Material(
        elevation: 2.0,
        shadowColor: kGreyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextFormField(
          obscureText: obsecure,
          decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: kWhiteColor,
              contentPadding: EdgeInsets.symmetric(vertical: 12),
              prefixIcon: icon,
              hintText: hint,
              hintStyle: greyTextStyle.copyWith(),
          ),
        ),
      ),
    );
  }
}
