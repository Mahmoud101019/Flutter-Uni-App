// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ModernAcademyScreen extends StatefulWidget {
  const ModernAcademyScreen({super.key});

  @override
  State<ModernAcademyScreen> createState() => _ModernAcademyScreenState();
}

class _ModernAcademyScreenState extends State<ModernAcademyScreen> {
  List<Map> MDSlider = [
    {"id": 1, "ImagePath": 'assets/images/ma1.png'},
    {"id": 2, "ImagePath": 'assets/images/ma2.png'},
    {"id": 3, "ImagePath": 'assets/images/ma3.png'},
    {"id": 4, "ImagePath": 'assets/images/ma4.png'},
    {"id": 5, "ImagePath": 'assets/images/ma5.png'},
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
                      items: MDSlider.map((imageUrl) {
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
                  text: "Modern Academy",
                  underLine: TextDecoration.none,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextUtils(
                    color: Colors.black,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                    text:
                        "Modern academy was established on 09/12/1993 in accordance with the ministerial decree no. 1570 The academy graduate is awarded a bachelor degree in the due major approved from His honor the higher education minister.Bachelor of Science in computer science in accordance with the ministerial decree no. 1570 dated 09/12/1993 Bachelor of Science in management technology science in accordance with the ministerial decree no. 18 dated 2/01/1996 in the different divisions listed below Bachelor of Science in management information systems in accordance with the ministerial decree no. 239 dated 26/02/2001",
                    underLine: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/ma6.png",
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
                            text: "Management Information System",
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
                      Get.toNamed(Routes.MISModernScreen);
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
                      "assets/images/ma7.png",
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
                            text: "Computer Science",
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
                      Get.toNamed(Routes.CsModernScreen);
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
                      "assets/images/moderne.png",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: textcolor,
                          borderRadius: BorderRadius.circular(1)),
                      child: Center(
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "DEPARTEMRNT OF ECONOMICS",
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
                      Get.toNamed(Routes.EcModernScreen);
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
