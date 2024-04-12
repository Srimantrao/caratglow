// ignore_for_file: file_names

import 'package:caratglow/view/screen/splash/Welcome.dart';
import 'package:caratglow/view/utils/app_String.dart';
import 'package:caratglow/view/utils/widgets/Bodys/body_Container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_color.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(() => const Welcome());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_Container(
        widget: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Logo_text.logoname,
                style: TextStyle(
                  fontSize: Get.width / 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Get.height / 80),
              Text(
                textAlign: TextAlign.center,
                Logo_text.Slogans,
                style: TextStyle(
                  fontSize: Get.width / 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
