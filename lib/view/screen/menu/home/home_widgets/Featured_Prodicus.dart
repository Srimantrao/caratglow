// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../controller/CallApi/HomePage/homePage.dart';
import '../../../../../controller/ScreenController/MenuController/home_Controller.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/app_color.dart';

class FeaturedProdicus extends StatefulWidget {
  const FeaturedProdicus({super.key});

  @override
  State<FeaturedProdicus> createState() => _FeaturedProdicusState();
}

class _FeaturedProdicusState extends State<FeaturedProdicus> {
  HomePageApi homepage = Get.put(HomePageApi());
  feature_product_Controller Feature = Get.put(feature_product_Controller());

  @override
  void initState() {
    Future.microtask(() {
      homepage.call_homepagedata();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Menu_text.Featured_hedding,
                style: TextStyle(
                  fontSize: Get.width / 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height / 50),
          Text(
            textAlign: TextAlign.center,
            Menu_text.Our_Shop,
            style: TextStyle(
              fontSize: Get.width / 25,
            ),
          ),
          SizedBox(height: Get.height / 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Feature.Pendant_fuction();
                },
                child: Container(
                  height: Get.height / 18,
                  width: Get.width / 4.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Get.width / 60),
                    border: Border.all(
                      color: (Feature.Pendals.value)
                          ? AppColor.SelectButton_color
                          : AppColor.dotcolor,
                    ),
                    color: (Feature.Pendals.value)
                        ? AppColor.SelectButton_color
                        : AppColor.background,
                  ),
                  child: Center(
                    child: Text(
                      Menu_text.Pendant,
                      style: TextStyle(
                        color: (Feature.Pendals.value)
                            ? AppColor.background
                            : AppColor.dotcolor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: Get.width / 50),
              GestureDetector(
                onTap: () {
                  Feature.Ring_fuction();
                },
                child: Container(
                  height: Get.height / 18,
                  width: Get.width / 4.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Get.width / 60),
                    border: Border.all(
                      color: (Feature.Rinds.value)
                          ? AppColor.SelectButton_color
                          : AppColor.dotcolor,
                    ),
                    color: (Feature.Rinds.value)
                        ? AppColor.SelectButton_color
                        : AppColor.background,
                  ),
                  child: Center(
                    child: Text(
                      Menu_text.Ring,
                      style: TextStyle(
                        color: (Feature.Rinds.value)
                            ? AppColor.background
                            : AppColor.dotcolor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: Get.width / 50),
              GestureDetector(
                onTap: () {
                  Feature.Earring_Fuction();
                },
                child: Container(
                  height: Get.height / 18,
                  width: Get.width / 4.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Get.width / 60),
                    border: Border.all(
                      color: (Feature.Earrings.value)
                          ? AppColor.SelectButton_color
                          : AppColor.dotcolor,
                    ),
                    color: (Feature.Earrings.value)
                        ? AppColor.SelectButton_color
                        : AppColor.background,
                  ),
                  child: Center(
                    child: Text(
                      Menu_text.Earring,
                      style: TextStyle(
                        color: (Feature.Earrings.value)
                            ? AppColor.background
                            : AppColor.dotcolor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height / 50),
          Visibility(
            visible: Feature.Pendals.value,
            child: SizedBox(
              height: Get.height / 4,
              child: ListView.builder(
                itemCount:
                    homepage.homepadedata["data"]["HomeProductCategory"].length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: Get.width / 50),
                    width: Get.width / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Get.width / 10),
                      image: DecorationImage(
                        image: NetworkImage(
                          homepage.homepadedata["data"]["HomeProductCategory"]
                              [index]["Image"],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Visibility(
            visible: Feature.Rinds.value,
            child: SizedBox(
              height: Get.height / 4,
              child: ListView.builder(
                itemCount:
                    homepage.homepadedata["data"]["HomeProductCategory"].length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: Get.width / 50),
                    width: Get.width / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Get.width / 10),
                      image: DecorationImage(
                          image: NetworkImage(
                            homepage.homepadedata["data"]["HomeProductCategory"]
                                [index]["Image"],
                          ),
                          fit: BoxFit.fill),
                    ),
                  );
                },
              ),
            ),
          ),
          Visibility(
            visible: Feature.Earrings.value,
            child: SizedBox(
              height: Get.height / 4,
              child: ListView.builder(
                itemCount:
                    homepage.homepadedata["data"]["HomeProductCategory"].length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: Get.width / 50,
                    ),
                    width: Get.width / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Get.width / 10),
                      image: DecorationImage(
                        image: NetworkImage(
                          homepage.homepadedata["data"]["HomeProductCategory"]
                              [index]["Image"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
