// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_String.dart';
import '../../app_color.dart';

class Inputfild extends StatelessWidget {
  final bool? obscureText;
  final Widget? suffixIcon;
  final String hintText;
  final String text;
  final TextEditingController controller;

  const Inputfild({
    super.key,
    this.obscureText,
    this.suffixIcon,
    required this.hintText,
    required this.text,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SizedBox(
          height: Get.height / 24,
          child: TextField(
            controller: controller,
            obscureText: obscureText ?? false,
            maxLines: null,
            expands: true,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              contentPadding: EdgeInsets.symmetric(
                horizontal: Get.width / 15,
                vertical: Get.width / 52,
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: AppColor.black_all,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
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
