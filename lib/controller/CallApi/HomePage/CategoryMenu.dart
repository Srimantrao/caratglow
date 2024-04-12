// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:convert';
import 'dart:developer';
import 'package:caratglow/view/utils/App_Url.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Categorymenu extends GetxController {
  var Categormenu;
  var isLoding = false.obs;

  Future Categormenu_Fuction() async {
    try {
      isLoding.value = true;
      final respons = await http.get(
        Uri.parse(HomePageData.category),
        headers: {
          'api-key': '123456789',
          'Clientip': '192.168.1.233',
        },
      );
      if (respons.statusCode == 200 || respons.statusCode == 201) {
        Categormenu = jsonDecode(respons.body);
        if (kDebugMode) {
          print(Categormenu);
        }
      } else {
        log("Error !! ${respons.statusCode}");
      }
    } finally {
      isLoding.value = false;
    }
  }
}
