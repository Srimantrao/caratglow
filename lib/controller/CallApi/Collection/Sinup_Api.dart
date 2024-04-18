// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:developer';

import 'package:caratglow/view/utils/App_Url.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SinupApi extends GetxController {
  var Sinup_data;
  var isloding = false.obs;

  Future Sinup_Fuction(
      String fristname,
      String lasname,
      String emailAdress,
      String mobile,
      String Street,
      String city,
      String pincode,
      String password) async {
    try {
      isloding.value = true;

      if (kDebugMode) {
        print(
          'Sending data: '
          '$fristname,'
          ' $lasname'
          ' $emailAdress'
          '$mobile'
          ' $Street'
          ' $city'
          ' $pincode,'
          ' $password',
        );
      }

      if (fristname.isEmpty ||
          lasname.isEmpty ||
          emailAdress.isEmpty ||
          mobile.isEmpty ||
          Street.isEmpty ||
          city.isEmpty ||
          pincode.isEmpty ||
          password.isEmpty) {
        Get.snackbar("Error", "All fields are required");
        return;
      }

      final Sinup_responce = await http.post(
        Uri.parse(Collectiondata_put.Sinup_url),
        body: jsonEncode(
          {
            'FirstName': fristname,
            'LastName': lasname,
            'Email': emailAdress,
            'mobile': mobile,
            'MobileNo': Street,
            'Address': city,
            'Pincode': pincode,
            'Password': password,
          },
        ),
        headers: {
          'api-key': '123456789',
          'Clientip': '192.168.1.233',
          'Content-Type': 'application/json',
        },
      );
      if (Sinup_responce.statusCode == 200 ||
          Sinup_responce.statusCode == 201) {
        Sinup_data = jsonDecode(Sinup_responce.body);
        if (kDebugMode) {
          print(Sinup_data);
        }
      } else {
        log("Error ! ${Sinup_responce.statusCode}, ${Sinup_responce.body}");
      }
    } finally {
      isloding.value = false;
    }
  }
}
