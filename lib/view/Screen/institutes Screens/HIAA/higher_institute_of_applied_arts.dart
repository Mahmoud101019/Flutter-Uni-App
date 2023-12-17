// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:sizer/sizer.dart';

class TheHigherInstituteofAppliedArtsScreen extends StatefulWidget {
  const TheHigherInstituteofAppliedArtsScreen({super.key});

  @override
  State<TheHigherInstituteofAppliedArtsScreen> createState() => _TheHigherInstituteofAppliedArtsScreenState();
}

class _TheHigherInstituteofAppliedArtsScreenState extends State<TheHigherInstituteofAppliedArtsScreen> {
  List<Map> HIAAlider = [
    {"id": 1, "ImagePath": 'assets/images/hia3.png'},
    {"id": 2, "ImagePath": 'assets/images/hia2.png'},
    {"id": 3, "ImagePath": 'assets/images/hia1.png'},
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
                Color(0xf4557e9d),
                Color(0xf4557e9d),
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/unisa white 3.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Stack(
                  children: [
                    CarouselSlider(
                      items: HIAAlider.map((imageUrl) {
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
                  text: "The Higher Institute of Applied Arts",
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
                        "The Higher Institute of Applied Arts is an institute that has been working since 2005 with various disciplines that provide the labor market abroad and the qualified ones during that period. All over the world all quality requirements from an institute keen on administrative quality from an institute keen on administrative quality The management of the institute to continue performing its scientific and practical mission with the highest quality by maintaining the institute's leadership and distinction as a scientific institution",
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
                SizedBox(
                  height: 5.h,
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
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            text: "Computer Science",
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/Frame 58.png",
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
                            text: "Engineering",
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
