// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../app_color.dart';

class Circal extends StatelessWidget {
  final bool circle_color;
  final bool icon_color;

  const Circal({
    super.key,
    required this.circle_color,
    required this.icon_color,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: (circle_color) ? AppColor.button : AppColor.background,
      child: Icon(
        Icons.home_outlined,
        color: (icon_color) ? AppColor.background : null,
      ),
    );
  }
}
