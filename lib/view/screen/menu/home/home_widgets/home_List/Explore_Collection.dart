// ignore_for_file: file_names, camel_case_types

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../controller/CallApi/HomePage/homePage.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';

class Explore_Collection extends StatefulWidget {
  const Explore_Collection({super.key});

  @override
  State<Explore_Collection> createState() => _Explore_CollectionState();
}

class _Explore_CollectionState extends State<Explore_Collection> {
  HomePageApi homepage = Get.put(HomePageApi());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 2,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            homepage.homepadedata['data']['HomePageSection4'][0]
            ['Background'],
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(
                height: Get.height / 2.2,
                width: Get.width / 1.2,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      homepage.homepadedata['data']
                      ['HomePageSection4'][0]['Title'],
                      style: TextStyle(
                        fontSize: Get.width / 18,
                        fontWeight: FontWeight.w600,
                        color: AppColor.background,
                      ),
                    ),
                    SizedBox(height: Get.height / 50),
                    Text(
                      homepage.homepadedata['data']
                      ['HomePageSection4'][0]
                      ['Description'],
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        fontWeight: FontWeight.w400,
                        color: AppColor.background,
                      ),
                    ),
                    SizedBox(height: Get.height / 7),
                    Container(
                      height: Get.height / 15,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.background,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          Menu_text.Explore,
                          style: TextStyle(
                            color: AppColor.background,
                            fontSize: Get.width / 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
