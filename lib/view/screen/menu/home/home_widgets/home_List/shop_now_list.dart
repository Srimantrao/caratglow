import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../controller/CallApi/HomePage/homePage.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';

class ShopNow extends StatefulWidget {
  const ShopNow({super.key});

  @override
  State<ShopNow> createState() => _ShopNowState();
}

class _ShopNowState extends State<ShopNow> {
  HomePageApi homepage = Get.put(HomePageApi());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 0.93,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: homepage.homepadedata["data"]["HomePageSection5"].length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: Get.height / 50),
            height: Get.height / 2,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  homepage.homepadedata["data"]["HomePageSection5"][index]
                      ["Background"],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 20,
                vertical: Get.width / 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    homepage.homepadedata["data"]["HomePageSection5"][index]
                        ["Title"],
                    style: TextStyle(
                      fontSize: Get.width / 16,
                    ),
                  ),
                  SizedBox(height: Get.height / 150),
                  Text(
                    homepage.homepadedata["data"]["HomePageSection5"][index]
                        ["SubTitle"],
                    style: TextStyle(
                      fontSize: Get.width / 25,
                    ),
                  ),
                  SizedBox(height: Get.height / 30),
                  Container(
                    height: Get.height / 20,
                    width: Get.width / 3,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: AppColor.black_all,
                        ),
                        bottom: BorderSide(
                          color: AppColor.black_all,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        Menu_text.shopnow,
                        style: TextStyle(
                          color: AppColor.black_all,
                          fontSize: Get.width / 21,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
