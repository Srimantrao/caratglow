// ignore_for_file: non_constant_identifier_names

import 'package:caratglow/view/utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../../../controller/ScreenController/MenuController/Buttom_Controller.dart';
import '../../../screen/menu/home/home.dart';
import '../../app_constans.dart';

class Buttom extends StatefulWidget {
  const Buttom({super.key});

  @override
  State<Buttom> createState() => _ButtomState();
}

class _ButtomState extends State<Buttom> {
  Buttom_Controller buttom_con = Get.put(Buttom_Controller());

  @override
  void initState() {
    buttom_con.ButtomBehaver();
    super.initState();
  }

  @override
  void dispose() {
    buttom_con.ButtomBehaver();
    super.dispose();
  }

  int Selectindex = 0;

  List<Widget> item = [
    const home(),
  ];

  Widget Selectitem(int index) {
    return item[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: (buttom_con.isScroll.value) ? 0.0 : 60.0,
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColor.background,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Selectindex = 0;
                    setState(() {});
                  },
                  child: CircleAvatar(
                    backgroundColor: (Selectindex == 0)
                        ? AppColor.button
                        : AppColor.background,
                    child: Icon(
                      Icons.home_outlined,
                      color: (Selectindex == 0) ? AppColor.background : null,
                    ),
                  ),
                ),
                const Icon(Icons.search),
                const Icon(Icons.shopping_cart_outlined),
                const Icon(CupertinoIcons.heart),
              ],
            ),
          ),
        ),
      ),
      body: Selectitem(Selectindex),
    );
  }
}
