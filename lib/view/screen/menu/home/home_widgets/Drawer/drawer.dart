// ignore_for_file: non_constant_identifier_names

import 'package:caratglow/view/utils/app_color.dart';
import 'package:caratglow/view/utils/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../../../../utils/app_String.dart';
import '../../../../../utils/widgets/Row/DrawerRow/row.dart';
import 'All_Jewellrey/All_Jewellery.dart';

class Drwer extends StatefulWidget {
  const Drwer({super.key});

  @override
  State<Drwer> createState() => _DrwerState();
}

class _DrwerState extends State<Drwer> {
  bool All_Jewwllery = false;
  bool Solitaire = false;

  double totalRowHeight = (Get.height / 23) * 11;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width,
      backgroundColor: AppColor.background,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.Drwar_color,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: Get.width / 10,
                      ),
                      SizedBox(width: Get.width / 40),
                      Text(
                        'Drawer Header',
                        style: TextStyle(
                          color: AppColor.background,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: AppIcons.cancel,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 20,
              ),
              child: Column(
                children: [
                  SizedBox(height: Get.height / 60),

                  //All Jewellery
                  const All_Jewellery(),
                  SizedBox(height: Get.height / 50),

                  //Solitaire
                  GestureDetector(
                    onTap: () {
                      Solitaire = !Solitaire;
                      setState(() {});
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Drawer_text.Solitaire,
                          style: TextStyle(
                            fontSize: Get.width / 25,
                          ),
                        ),
                        (Solitaire) ? AppIcons.minimize : AppIcons.plus,
                      ],
                    ),
                  ),
                  Divider(
                    color: AppColor.black_all,
                    thickness: 1,
                  ),
                  Visibility(
                    visible: Solitaire,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      child: Column(
                        children: [
                          SizedBox(height: Get.height / 60),
                          Row_show(
                            name: Drawer_text.Create_your_Own_Jewellery,
                            icon: AppIcons.plus,
                          ),
                          Row_show(
                            name: Drawer_text.Shop_By_Category,
                            icon: AppIcons.plus,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
