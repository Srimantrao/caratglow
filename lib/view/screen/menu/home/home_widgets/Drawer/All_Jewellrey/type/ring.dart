// ignore_for_file: non_constant_identifier_names

import 'package:caratglow/controller/ScreenController/MenuController/Drawer_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../utils/app_String.dart';
import '../../../../../../../utils/app_color.dart';
import '../../../../../../../utils/app_icon.dart';
import '../../../../../../../utils/widgets/Row/DrawerRow/row.dart';

class Rings extends StatefulWidget {
  const Rings({super.key});

  @override
  State<Rings> createState() => _RingsState();
}

class _RingsState extends State<Rings> {
  Drawer_Controller Drawer = Get.put(Drawer_Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          GestureDetector(
            onTap: () {
              Drawer.Ring_Fuction();
            },
            child: Row_show(
              name: Drawer_text.Ring,
              icon: (Drawer.ring.value) ? AppIcons.minimize : AppIcons.plus,
              fontWeight: FontWeight.w600,
            ),
          ),
          AnimatedOpacity(
            opacity: Drawer.ring.value ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 800),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: Drawer.ring.value ? Drawer.totalRowHeight_ring : 0,
              child: Visibility(
                visible: Drawer.ring.value,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row_show(
                        name: Drawer_text.Engagement,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Bands,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Eternity,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Cocktail,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Casual,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Men_Rings,
                        fontWeight: FontWeight.w400,
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColor.black_all,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
