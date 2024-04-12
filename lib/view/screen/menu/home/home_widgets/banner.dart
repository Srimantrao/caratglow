import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../controller/CallApi/HomePage/homePage.dart';
import '../../../../../controller/ScreenController/MenuController/home_Controller.dart';
import '../../../../utils/app_color.dart';

class Benner extends StatefulWidget {
  const Benner({super.key});

  @override
  State<Benner> createState() => _BennerState();
}

class _BennerState extends State<Benner> {
  HomePageApi homepage = Get.put(HomePageApi());
  Benner_homeController home = Get.put(Benner_homeController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: [
            for (var i in homepage.homepadedata["data"]["HomeBanner"])
              Container(
                height: Get.height / 5,
                width: Get.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      i["Image"],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
          options: CarouselOptions(
            onPageChanged: (val, r) {
              home.BennerFuction(val, r);
            },
            viewportFraction: 1,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(
              seconds: 2,
            ),
          ),
        ),
        Obx(
          () => Positioned(
            height: Get.height / 2,
            left: 200,
            child: AnimatedSmoothIndicator(
              effect: JumpingDotEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: AppColor.background,
                activeDotColor: AppColor.dotcolor,
              ),
              activeIndex: home.activeindex.value,
              count: homepage.homepadedata.length,
            ),
          ),
        )
      ],
    );
  }
}
