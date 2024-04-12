import 'package:caratglow/view/utils/app_color.dart';
import 'package:caratglow/view/utils/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Drwer extends StatelessWidget {
  const Drwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.Drwar_color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: AppColor.background,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: AppIcons.cancel,
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Do something
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Do something
            },
          ),
        ],
      ),
    );
  }
}
