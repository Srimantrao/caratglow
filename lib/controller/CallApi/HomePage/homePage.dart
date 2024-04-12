// ignore_for_file: non_constant_identifier_names, file_names, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:developer';
import 'package:caratglow/view/utils/App_Url.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePageApi extends GetxController {
  var homepadedata;
  var isloding = false.obs;

  Future call_homepagedata() async {
    try {
      isloding.value = true;
      final responce = await http.get(
        Uri.parse(HomePageData.homepageData),
        headers: {
          'api-key': '123456789',
          'Clientip': '192.168.1.233',
        },
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        homepadedata = jsonDecode(responce.body);
        if (kDebugMode) {
          print(homepadedata);
        }
      } else {
        log("Error!! : ${responce.statusCode}");
      }
    } finally {
      isloding.value = false;
    }
  }
}
