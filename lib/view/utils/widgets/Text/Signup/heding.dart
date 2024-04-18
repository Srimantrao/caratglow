// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_String.dart';

class hedding extends StatelessWidget {
  final String text;

  const hedding({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: Get.width / 23,
      ),
    );
  }
}
