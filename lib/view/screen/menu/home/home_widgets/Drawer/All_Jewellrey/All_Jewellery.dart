// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types

import 'package:caratglow/controller/ScreenController/MenuController/Drawer_Controller.dart';
import 'package:caratglow/view/screen/menu/home/home_widgets/Drawer/All_Jewellrey/type/Earring.dart';
import 'package:caratglow/view/screen/menu/home/home_widgets/Drawer/All_Jewellrey/type/ring.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../utils/app_String.dart';
import '../../../../../../utils/app_color.dart';
import '../../../../../../utils/app_icon.dart';
import '../../../../../../utils/widgets/Row/DrawerRow/row.dart';

class All_Jewellery extends StatefulWidget {
  const All_Jewellery({super.key});

  @override
  State<All_Jewellery> createState() => _All_JewelleryState();
}

class _All_JewelleryState extends State<All_Jewellery> {
  Drawer_Controller Drawer = Get.put(Drawer_Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          GestureDetector(
            onTap: () {
              Drawer.All_Jewellery_Fuction();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Drawer_text.All_Jewellery,
                  style: TextStyle(
                    fontSize: Get.width / 25,
                  ),
                ),
                (Drawer.All_Jewwllery.value)
                    ? AppIcons.minimize
                    : AppIcons.plus,
              ],
            ),
          ),
          AnimatedOpacity(
            opacity: Drawer.All_Jewwllery.value ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 800),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut, // Animation curve
              height: Drawer.All_Jewwllery.value ? Drawer.totalRowHeight : 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Visibility(
                      visible: Drawer.All_Jewwllery.value,
                      child: Divider(
                        color: AppColor.black_all,
                        thickness: 1,
                      ),
                    ),
                    Visibility(
                      visible: Drawer.All_Jewwllery.value,
                      child: Column(
                        children: [
                          SizedBox(height: Get.height / 60),
                          const Rings(),
                          const Earring(),
                          Row_show(
                            name: Drawer_text.Pendant,
                            icon: AppIcons.plus,
                            fontWeight: FontWeight.w600,
                          ),
                          Row_show(
                            name: Drawer_text.Tanmania,
                            icon: AppIcons.plus,
                            fontWeight: FontWeight.w600,
                          ),
                          Row_show(
                            name: Drawer_text.Bangle,
                            icon: AppIcons.plus,
                            fontWeight: FontWeight.w600,
                          ),
                          Row_show(
                            name: Drawer_text.Nosepine,
                            icon: AppIcons.plus,
                            fontWeight: FontWeight.w600,
                          ),
                          Row_show(
                            name: Drawer_text.Shop_By_Occasion,
                            icon: AppIcons.plus,
                            fontWeight: FontWeight.w600,
                          ),
                          Row_show(
                            name: Drawer_text.Shop_By_Price,
                            icon: AppIcons.plus,
                            fontWeight: FontWeight.w600,
                          ),
                          Row_show(
                            name: Drawer_text.Shop_by_Weight,
                            icon: AppIcons.plus,
                            fontWeight: FontWeight.w600,
                          ),
                          Row_show(
                            name: Drawer_text.Shop_by_Color,
                            icon: AppIcons.plus,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
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
