// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:get/get.dart';

import '../../../view/utils/app_image.dart';

class Benner_homeController extends GetxController {
  var activeindex = 0.obs;

  void BennerFuction(val, r) {
    activeindex.value = val;
  }
}

class Selectimage_homeController extends GetxController {
  RxInt Selectimage = 0.obs;

  List<String> imageselect = [
    AppImage.Pandal_backgroud,
    AppImage.Background,
    AppImage.benner,
    AppImage.benner2,
    AppImage.jewellery_background,
  ];

  void imagefuction(index) {
    Selectimage.value = index;
  }

  void Imagevoid_one() {
    Selectimage.value = 0;
  }

  void Imagevoid_two() {
    Selectimage.value = 1;
  }

  void Imagevoid_three() {
    Selectimage.value = 2;
  }

  void Imagevoid_four() {
    Selectimage.value = 3;
  }

  void Imagevoid_five() {
    Selectimage.value = 4;
  }
}

class feature_product_Controller extends GetxController {
  var Pendals = true.obs;
  var Rinds = false.obs;
  var Earrings = false.obs;

  void Pendant_fuction() {
    Pendals.value = true;
    Rinds.value = false;
    Earrings.value = false;
  }

  void Ring_fuction() {
    Rinds.value = true;
    Pendals.value = false;
    Earrings.value = false;
  }

  void Earring_Fuction() {
    Earrings.value = true;
    Pendals.value = false;
    Rinds.value = false;
  }
}
