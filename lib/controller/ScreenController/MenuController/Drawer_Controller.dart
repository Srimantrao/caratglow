// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:get/get.dart';

class Drawer_Controller extends GetxController {
  var totalRowHeight = (Get.height / 24) * 11;
  var totalRowHeight_ring = (Get.height / 23) * 6;
  var totalRowHeight_Erring = (Get.height / 23) * 6;

  var All_Jewwllery = false.obs;
  var ring = false.obs;
  var Earring = false.obs;

  void All_Jewellery_Fuction() {
    All_Jewwllery.value = !All_Jewwllery.value;
  }

  void Ring_Fuction() {
    ring.value = !ring.value;
  }

  void Erring_Fuction() {
    Earring.value = !Earring.value;
  }
}
