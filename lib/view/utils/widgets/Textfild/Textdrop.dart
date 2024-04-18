// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_color.dart';

class Textdrop extends StatelessWidget {
  final String text;
  final Widget? child;

  const Textdrop({
    super.key,
    required this.text,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: Get.width / 10,
              child: Divider(
                thickness: 1,
                color: AppColor.Text_fild_color,
              ),
            ),
            SizedBox(width: Get.width / 30),
            Text(
              text,
              style: TextStyle(
                color: AppColor.Texting,
                fontWeight: FontWeight.w600,
                fontSize: Get.width / 25,
              ),
            ),
            SizedBox(width: Get.width / 30),
            Expanded(
              child: Divider(
                thickness: 1,
                color: AppColor.Text_fild_color,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 10,
          ),
          child: SizedBox(
            height: Get.height / 24,
            child: child,
          ),
        ),
        Divider(
          thickness: 1,
          color: AppColor.Text_fild_color,
        ),
      ],
    );
  }
}
