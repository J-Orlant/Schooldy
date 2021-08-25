import 'package:flutter/material.dart';
import 'package:kksi/bloc/tab_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabbarItem extends StatelessWidget {
  final String title;
  final int index;

  const TabbarItem({
    required this.title,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          context.read<TabCubit>().tabpage(index);
        },
        child: Center(
          child: Container(
            padding: EdgeInsets.only(
              bottom: 7,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: (context.read<TabCubit>().state == index)
                      ? kDarkBlue
                      : kTransparent,
                  width: 2,
                ),
              ),
            ),
            child: Text(
              title.toUpperCase(),
              style: blueTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
