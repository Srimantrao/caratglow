// ignore_for_file: camel_case_types, file_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../controller/CallApi/HomePage/CategoryMenu.dart';
import '../../../../../utils/app_String.dart';

class Shop_By_Collection extends StatefulWidget {
  const Shop_By_Collection({super.key});

  @override
  State<Shop_By_Collection> createState() => _Shop_By_CollectionState();
}

class _Shop_By_CollectionState extends State<Shop_By_Collection> {
  Categorymenu categor = Get.put(Categorymenu());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Menu_text.Hading_shop,
          style: TextStyle(
            fontSize: Get.width / 20,
          ),
        ),
        SizedBox(height: Get.height / 40),
        SizedBox(
          height: Get.height / 4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:
            categor.Categormenu["data"]["Collection"].length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: Get.height / 4,
                width: Get.width / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      categor.Categormenu["data"]["Collection"]
                      [index]["ImageUrl"],
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: Get.height / 5),
                    Text(
                      textAlign: TextAlign.center,
                      categor.Categormenu["data"]["Collection"]
                      [index]["ParaName"],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
