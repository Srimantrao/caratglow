// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../app_color.dart';
import '../../app_icon.dart';

class Appingbar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final Widget leading;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const Appingbar({super.key, required this.name, required this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      backgroundColor: AppColor.background,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.transparent,
      title: Text(name),
    );
  }
}
