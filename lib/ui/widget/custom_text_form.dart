import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class CustomTextForm extends StatefulWidget {
  final String hint;
  final Icon icon;
  bool obsecure;

  CustomTextForm({
    Key? key,
    required this.hint,
    required this.icon,
    this.obsecure = false,
  }) : super(key: key);

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  @override
  Widget build(BuildContext context) {
    var show = (widget.obsecure) ? true : false;
    return Container(
        height: 44,
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 12,
          left: 19,
          bottom: 13,
          right: 19,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 5.0,
              color: kBlackColor.withOpacity(0.25),
            ),
          ],
        ),
        child: Row(
          children: [
            widget.icon,
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextFormField(
                obscureText: widget.obsecure,
                decoration: InputDecoration.collapsed(
                  border: InputBorder.none,
                  fillColor: kWhiteColor,
                  hintText: widget.hint,
                  hintStyle: blackTextStyle.copyWith(
                    fontSize: 12,
                    color: kBlackColor.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            (show)
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.obsecure = !widget.obsecure;
                        show = true;
                      });
                    },
                    child: Icon(
                      Icons.remove_red_eye_sharp,
                      color: kPrimaryColor,
                      size: 20,
                    ),
                  )
                : SizedBox()
          ],
        ));
  }
}
