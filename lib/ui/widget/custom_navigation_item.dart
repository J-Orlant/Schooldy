import 'package:flutter/material.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavigationItem extends StatelessWidget {
  final String icon;
  final String title;
  final int index;
  double width;
  CustomNavigationItem(
      {Key? key,
      required this.index,
      required this.title,
      required this.icon,
      this.width = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(),
          Image.asset(
            icon,
            width: width,
            color: (context.read<PageCubit>().state == index)
                ? kDarkBlue
                : kGreyColor,
          ),
          Text(
            title,
            style: blueTextStyle.copyWith(
              color: (context.read<PageCubit>().state == index)
                  ? kDarkBlue
                  : kGreyColor,
              fontWeight: medium,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
