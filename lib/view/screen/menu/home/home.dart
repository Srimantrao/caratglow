// ignore_for_file: camel_case_types, non_constant_identifier_names, unrelated_type_equality_checks

import
'package:flutter/material.dart';

import 'package:caratglow/controller/CallApi/HomePage/CategoryMenu.dart';
import 'package:caratglow/modal/menu/home/product_list.dart';
import 'package:caratglow/view/utils/app_String.dart';
import 'package:caratglow/view/utils/app_color.dart';
import 'package:caratglow/view/utils/app_icon.dart';
import 'package:caratglow/view/utils/app_image.dart';
import 'package:get/get.dart';
import '../../../../controller/ScreenController/ButtomController/Buttom_Controller.dart';
import '../../../utils/widgets/Appbar/Appbar.dart';
import '../../../utils/widgets/Bodys/body_Container.dart';
import 'home_widgets/Featured_Prodicus.dart';
import 'home_widgets/banner.dart';
import 'home_widgets/collections.dart';
import 'home_widgets/Drawer/drawer.dart';
import 'home_widgets/home_List/Explore_Collection.dart';
import 'home_widgets/home_List/Shop_By_Collection.dart';
import 'home_widgets/home_List/shop_now_list.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Categorymenu categor = Get.put(Categorymenu());
  Buttom_Controller buttom_con = Get.put(Buttom_Controller());

  @override
  void initState() {
    Future.microtask(() async {
      await categor.Categormenu_Fuction();
    });
    super.initState();
  }

  @override
  void dispose() {
    categor.Categormenu_Fuction();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drwer(),
      appBar: Appingbar(
        name: Logo_text.logoname,
        leading: GestureDetector(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: AppIcons.dehaze,
        ),
      ),
      body: Body_Container(
        widget: Obx(
          () {
            if (categor.isLoding.value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return SingleChildScrollView(
                controller: buttom_con.mainScroll,
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 80),

                    //Catagary
                    SizedBox(
                      height: Get.height / 9,
                      child: ListView.builder(
                        itemCount: Product_list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              vertical: Get.width / 100,
                              horizontal: Get.width / 50,
                            ),
                            width: Get.width / 5,
                            decoration: BoxDecoration(
                              color: AppColor.background,
                              boxShadow: kElevationToShadow[1],
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: Get.height / 150),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                    Product_list[index]["icon"],
                                    scale: 4,
                                  ),
                                ),
                                SizedBox(height: Get.height / 100),
                                Text(Product_list[index]["name"]),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Benner
                    const Benner(),
                    SizedBox(height: Get.height / 40),

                    //Shop By Collection
                    const Shop_By_Collection(),
                    SizedBox(height: Get.height / 50),

                    //Start With Shopping
                    Container(
                      height: Get.height / 2.8,
                      width: Get.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImage.Pandal_backgroud),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width / 20,
                          vertical: Get.width / 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Get.width / 2,
                              child: Text(
                                Menu_text.Create,
                                style: TextStyle(
                                  fontSize: Get.width / 19,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.background,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 50),
                            SizedBox(
                              width: Get.width / 1.2,
                              child: Text(
                                Menu_text.Select,
                                style: TextStyle(
                                  fontSize: Get.width / 24,
                                  color: AppColor.background,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: Get.width / 2.3,
                                  height: Get.height / 15,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColor.background),
                                  ),
                                  child: Center(
                                    child: Text(
                                      Menu_text.Setting,
                                      style: TextStyle(
                                        color: AppColor.background,
                                        fontSize: Get.width / 27,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: Get.width / 2.3,
                                  height: Get.height / 15,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColor.background),
                                  ),
                                  child: Center(
                                    child: Text(
                                      Menu_text.Diamond,
                                      style: TextStyle(
                                        color: AppColor.background,
                                        fontSize: Get.width / 27,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //See All Collection
                    const Collections(),
                    SizedBox(height: Get.height / 50),

                    //Featured Products
                    const FeaturedProdicus(),
                    SizedBox(height: Get.height / 50),

                    //Tanmania
                    const Explore_Collection(),
                    SizedBox(height: Get.height / 30),

                    //Othres List
                    const ShopNow(),
                    SizedBox(height: Get.height / 30),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
