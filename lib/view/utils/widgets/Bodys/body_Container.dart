// ignore_for_file: file_names, camel_case_types

import 'package:caratglow/view/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_image.dart';

class Body_Container extends StatelessWidget {
  final DecorationImage? image;
  final Widget? widget;

  const Body_Container({
    super.key,
    this.widget,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColor.background,
        image: image,
      ),
      child: widget,
    );
  }
}
