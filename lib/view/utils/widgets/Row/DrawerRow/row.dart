// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Row_show extends StatelessWidget {
  final String name;
  final Widget? icon;
  final FontWeight? fontWeight;

  const Row_show({
    super.key,
    required this.name,
    this.icon,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: Get.width / 26,
                fontWeight: fontWeight,
              ),
            ),
            icon ?? const SizedBox(),
          ],
        ),
        SizedBox(height: Get.height / 80),
      ],
    );
  }
}
