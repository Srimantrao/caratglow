// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../../view/screen/menu/home/home.dart';

class Buttom_Controller extends GetxController {
  //Item Selection
  var Selectindex = 0.obs;

  List<Widget> item = [
    const home(),
  ];

  Widget Selectitem(int index) {
    return item[index];
  }

  void indexselect_fuction_one() {
    Selectindex.value = 0;
  }

  //BottamNavigation Behavir
  var isScroll = false.obs;
  ScrollController mainScroll = ScrollController();

  void ButtomBehaver() {
    mainScroll = ScrollController();
    mainScroll.addListener(() {
      if (isScroll.value =
          mainScroll.position.userScrollDirection == ScrollDirection.forward) {
        isScroll.value = false;
      } else if (isScroll.value =
          mainScroll.position.userScrollDirection == ScrollDirection.reverse) {
        isScroll.value = true;
      }
    });
  }
}
