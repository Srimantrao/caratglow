// ignore_for_file: file_names, camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:convert';
import 'dart:developer';
import 'package:caratglow/view/utils/App_Url.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class countrylist extends GetxController {
  var countrylist_data;
  String? selectedCountryId_code;
  String? selectedCountryId_state;
  var isLoding = false.obs;

  Future countrylist_fuction() async {
    try {
      isLoding.value = true;
      final countrylist_responce = await http.get(
        Uri.parse(Collectiondata.CountryList),
        headers: {
          'api-key': '123456789',
          'Clientip': '192.168.1.233',
        },
      );
      if (countrylist_responce.statusCode == 200 ||
          countrylist_responce.statusCode == 201) {
        countrylist_data = jsonDecode(countrylist_responce.body);
        if (kDebugMode) {
          print("Country Data: $countrylist_data");
        }
      } else {
        log("Erro ! ${countrylist_responce.statusCode}");
      }
    } finally {
      isLoding.value = false;
    }
  }
}

class statelist extends GetxController {
  var statelist_data;
  var isloding = false.obs;
  String? selectedstate;
  String? selectedcontry;

  Future StateList_Fuction(String CountryId) async {
    try {
      isloding.value = true;
      final State_responce =
          await http.put(Uri.parse(Collectiondata_put.Statelist), headers: {
        'api-key': '123456789',
        'Clientip': '192.168.1.233',
        'Content-Type': 'application/json',
      }, body: {
        jsonEncode({
          'CountryId': CountryId,
        }),
      });
      if (State_responce.statusCode == 200 ||
          State_responce.statusCode == 201) {
        statelist_data = jsonEncode(State_responce.body);
        if (kDebugMode) {
          print("State: $statelist_data");
        }
      } else {
        log("Erro ! ${State_responce.statusCode}");
      }
    } finally {
      isloding.value = false;
    }
  }
}
