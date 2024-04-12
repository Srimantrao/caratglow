// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app_color.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const Button({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height / 15,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Get.width / 50,
          ),
          color: AppColor.button,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppColor.background,
              fontSize: Get.width / 23,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
