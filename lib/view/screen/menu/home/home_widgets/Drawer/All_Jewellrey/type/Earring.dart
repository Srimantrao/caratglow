// ignore_for_file: non_constant_identifier_names, file_names

import 'package:caratglow/controller/ScreenController/MenuController/Drawer_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../utils/app_String.dart';
import '../../../../../../../utils/app_color.dart';
import '../../../../../../../utils/app_icon.dart';
import '../../../../../../../utils/widgets/Row/DrawerRow/row.dart';

class Earring extends StatefulWidget {
  const Earring({super.key});

  @override
  State<Earring> createState() => _EarringState();
}

class _EarringState extends State<Earring> {
  Drawer_Controller Drawer = Get.put(Drawer_Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          GestureDetector(
            onTap: () {
              Drawer.Erring_Fuction();
            },
            child: Row_show(
              name: Drawer_text.Earring,
              icon: (Drawer.Earring.value) ? AppIcons.minimize : AppIcons.plus,
              fontWeight: FontWeight.w600,
            ),
          ),
          AnimatedOpacity(
            opacity: Drawer.Earring.value ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 800),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: Drawer.Earring.value ? Drawer.totalRowHeight_Erring : 0,
              child: Visibility(
                visible: Drawer.Earring.value,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row_show(
                        name: Drawer_text.Stud,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Drag,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Huggies,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Sui_Dhaga,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Earcuffs,
                        fontWeight: FontWeight.w400,
                      ),
                      const Row_show(
                        name: Drawer_text.Hoops,
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
