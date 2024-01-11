// ignore_for_file: file_names, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Institutes_Screen extends StatelessWidget {
  const Institutes_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                SizedBox(
                  height: 5.h,
                ),
                Image.asset(
                  "assets/images/unisa white 3.png",
                  fit: BoxFit.cover,
                ),
                TextUtils(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                  text: "Institutes",
                  underLine: TextDecoration.none,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.shroukacadmyScreen);
                      },
                      child: Container(
                        height: 12.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 254, 253, 253)
                                .withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Image.asset("assets/images/logo 1.png")),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "El Shrouk Academy ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.higherTechnologicalInstituteScreen);
                      },
                      child: Container(
                        height: 12.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 254, 253, 253)
                                .withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Image.asset("assets/images/index 1.png")),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "Higher Technological Institute  ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.modernAcademyScreen);
                      },
                      child: Container(
                        height: 12.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 254, 253, 253)
                                .withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Image.asset(
                                "assets/images/شعار_الأكاديمية_الحديثة_بالمعادي 1.png")),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "Modern Academy ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.futureAcademyegScreen);
                      },
                      child: Container(
                        height: 12.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 254, 253, 253)
                                .withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Image.asset(
                                "assets/images/5d383e9d9474f 1.png")),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "Future Academy ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                // InkWell(
                //   onTap: () {
                //     Get.toNamed(Routes.theHigherInstituteofAppliedArtsScreen);
                //   },
                //   child: Column(
                //     children: [
                //       Container(
                //         height: 12.h,
                //         width: 80.w,
                //         decoration: BoxDecoration(
                //             color: Color.fromARGB(255, 254, 253, 253)
                //                 .withOpacity(0.3),
                //             borderRadius: BorderRadius.circular(10)),
                //         child: Center(
                //             child: Image.asset(
                //                 "assets/images/معهد-فنون-تطبيقية-سنتين 1.png")),
                //       ),
                //       SizedBox(
                //         height: 0.5.h,
                //       ),
                //       Align(
                //         alignment: Alignment.center,
                //         child: TextUtils(
                //           color: Colors.black,
                //           fontSize: 16.sp,
                //           fontWeight: FontWeight.w900,
                //           text: "The Higher Institute Of Applied Arts",
                //           underLine: TextDecoration.none,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 5.h,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
