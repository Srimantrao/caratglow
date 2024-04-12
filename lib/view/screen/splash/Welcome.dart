// ignore_for_file: file_names

import 'dart:ui';
import 'package:caratglow/view/screen/menu/home/home.dart';
import 'package:caratglow/view/utils/app_String.dart';
import 'package:caratglow/view/utils/app_color.dart';
import 'package:caratglow/view/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/widgets/Bodys/body_Container.dart';
import '../../utils/widgets/Buttom/Buttom.dart';
import '../../utils/widgets/Container/Button/wideButtons.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_Container(
        image: const DecorationImage(
          image: AssetImage(
            AppImage.Background,
          ),
          fit: BoxFit.cover,
        ),
        widget: SafeArea(
          child: Column(
            children: [
              SizedBox(height: Get.height / 5),
              SizedBox(
                height: Get.height / 3,
                width: Get.width / 1.1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Get.width / 20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                    child: SizedBox(
                      height: Get.height / 4,
                      width: Get.width / 1.1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width / 28,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: Get.height / 40),
                            Text(
                              Welcome_text.welcome,
                              style: TextStyle(
                                color: AppColor.Heding_text,
                                fontWeight: FontWeight.w800,
                                fontSize: Get.width / 15,
                              ),
                            ),
                            SizedBox(height: Get.height / 30),
                            Text(
                              textAlign: TextAlign.center,
                              Welcome_text.Accessible,
                              style: TextStyle(
                                color: AppColor.Heding_text,
                                fontWeight: FontWeight.w600,
                                fontSize: Get.width / 22,
                              ),
                            ),
                            SizedBox(height: Get.height / 50),
                            Text(
                              textAlign: TextAlign.center,
                              Welcome_text.Elevate,
                              style: TextStyle(
                                color: AppColor.text,
                                fontSize: Get.width / 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height / 3),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width / 20,
                ),
                child: Button(
                  onTap: () {
                    Get.to(() => const Buttom());
                  },
                  text: Welcome_text.Get_Started,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
