// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Buttom_Controller extends GetxController {
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
