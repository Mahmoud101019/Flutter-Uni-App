// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AucUniverstyScreen extends StatefulWidget {
  const AucUniverstyScreen({super.key});

  @override
  State<AucUniverstyScreen> createState() => _AucUniverstyScreenState();
}

class _AucUniverstyScreenState extends State<AucUniverstyScreen> {
  List<Map> AucSlider = [
    {"id": 1, "ImagePath": 'assets/images/auc5.png'},
    {"id": 2, "ImagePath": 'assets/images/auc1.png'},
    {"id": 3, "ImagePath": 'assets/images/auc2.png'},
    {"id": 4, "ImagePath": 'assets/images/auc3.png'},
    {"id": 5, "ImagePath": 'assets/images/auc4.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int Curntindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xf4557e9d),
        ),
        body: Container(
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(244, 255, 255, 255),
                Color.fromARGB(244, 103, 128, 147),
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    color: Color(0xf4557e9d),
                    child: Image.asset(
                      "assets/images/unisa white 3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Stack(
                  children: [
                    CarouselSlider(
                      items: AucSlider.map((imageUrl) {
                        return Image.asset(
                          imageUrl['ImagePath'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        );
                      }).toList(),
                      options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            Curntindex = index;
                          });
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextUtils(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w900,
                  text: "Welcome to",
                  underLine: TextDecoration.none,
                ),
                TextUtils(
                  color: textcolor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w900,
                  text: "American University",
                  underLine: TextDecoration.none,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextUtils(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    text:
                        "At The American University in Cairo (AUC), you broaden your perspective on the world. You have access to new courses, research and work-study opportunities, and extracurricular activities. The experience you get prepares you to the job market. You gain experience that employers rate highly: you know how to adapt to new environments, work across cultures, and make your own way. We’re a community driven by excellence. Every day.",
                    underLine: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/auc6.png",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: textcolor,
                          borderRadius: BorderRadius.circular(1)),
                      child: Center(
                        child: TextUtils(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            text: " Business",
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(20),
                  child: AuthButton(
                    text: "More Infromation",
                    onPressed: () {
                      Get.toNamed(Routes.BusinessAuCScreen);
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/auc7.png",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: textcolor,
                          borderRadius: BorderRadius.circular(1)),
                      child: Center(
                        child: TextUtils(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            text: "Global Affairs and Public Policy",
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(20),
                  child: AuthButton(
                    text: "More Infromation",
                    onPressed: () {
                      Get.toNamed(Routes.GlobalAffairsScreen);
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/auc8.png",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: textcolor,
                          borderRadius: BorderRadius.circular(1)),
                      child: Center(
                        child: TextUtils(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            text: "Humanities and Social Sciences",
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(20),
                  child: AuthButton(
                    text: "More Infromation",
                    onPressed: () {
                      Get.toNamed(Routes.HssAucScreen);
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
