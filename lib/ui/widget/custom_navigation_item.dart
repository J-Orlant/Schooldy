import 'package:flutter/material.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavigationItem extends StatelessWidget {
  final String icon;
  final int index;
  const CustomNavigationItem({
    Key? key,
    required this.index,
    required this.icon,
  }) : super(key: key);

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
            width: 24,
            height: 24,
            color: (context.read<PageCubit>().state == index)
                ? kDarkBlue
                : kGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            color: (context.read<PageCubit>().state == index)
                ? kDarkBlue
                : kTransparent,
          ),
        ],
      ),
    );
  }
}
