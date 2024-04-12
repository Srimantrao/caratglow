// ignore_for_file: unrelated_type_equality_checks, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/ScreenController/MenuController/home_Controller.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/app_color.dart';

class Collections extends StatefulWidget {
  const Collections({super.key});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  Selectimage_homeController image_select =
      Get.put(Selectimage_homeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 1.15,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColor.showcolor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width / 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height / 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Menu_text.SEE,
                  style: TextStyle(
                    fontSize: Get.width / 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height / 30),
            GestureDetector(
                onTap: () {
                  image_select.Imagevoid_one();
                },
                child: Obx(
                  () => Text(
                    Menu_text.FLora,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: (image_select.Selectimage == 0)
                          ? AppColor.dotcolor
                          : AppColor.background,
                    ),
                  ),
                )),
            SizedBox(height: Get.height / 80),
            GestureDetector(
                onTap: () {
                  image_select.Imagevoid_two();
                },
                child: Obx(
                  () => Text(
                    Menu_text.Swansea,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: (image_select.Selectimage == 1)
                          ? AppColor.dotcolor
                          : AppColor.background,
                    ),
                  ),
                )),
            SizedBox(height: Get.height / 80),
            GestureDetector(
                onTap: () {
                  image_select.Imagevoid_three();
                },
                child: Obx(
                  () => Text(
                    Menu_text.Lattrape,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: (image_select.Selectimage == 2)
                          ? AppColor.dotcolor
                          : AppColor.background,
                    ),
                  ),
                )),
            SizedBox(height: Get.height / 80),
            GestureDetector(
                onTap: () {
                  image_select.Imagevoid_four();
                },
                child: Obx(
                  () => Text(
                    Menu_text.On_Rocks,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: (image_select.Selectimage == 3)
                          ? AppColor.dotcolor
                          : AppColor.background,
                    ),
                  ),
                )),
            SizedBox(height: Get.height / 80),
            GestureDetector(
                onTap: () {
                  image_select.Imagevoid_five();
                },
                child: Obx(
                  () => Text(
                    Menu_text.Artemis,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: (image_select.Selectimage == 4)
                          ? AppColor.dotcolor
                          : AppColor.background,
                    ),
                  ),
                )),
            SizedBox(height: Get.height / 20),
            GestureDetector(
              onTap: () {
                image_select.imagefuction(image_select.Selectimage);
              },
              child: Obx(
                () => Container(
                  height: Get.height / 2,
                  width: Get.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        image_select
                            .imageselect[image_select.Selectimage.value],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
