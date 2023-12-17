// ignore_for_file: prefer_const_constructors_in_immutables, file_names, non_constant_identifier_names, prefer_const_constructors, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class EngineeringScreen extends StatefulWidget {
  EngineeringScreen({super.key});

  @override
  State<EngineeringScreen> createState() => _EngineeringScreenState();
}

class _EngineeringScreenState extends State<EngineeringScreen> {
  List<Map> ADSlider = [
    {"id": 1, "ImagePath": 'assets/images/eng1.png'},
    {"id": 2, "ImagePath": 'assets/images/eng2.png'},
    {"id": 3, "ImagePath": 'assets/images/eng3.png'},
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
                Color(0xf4557e9d),
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logobuead-removebg-preview.png",
                  fit: BoxFit.cover,
                  width: 150,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Stack(
                  children: [
                    CarouselSlider(
                      items: ADSlider.map((imageUrl) {
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
                  text: "Faculty of Engineering",
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
                        "The Faculty of Engineering at the British University is a leading institution renowned for its engineering education and research.With a diverse range of disciplines, including mechanical, electrical, civil, and chemical engineering, the faculty offers comprehensive programs.State-of-the-art facilities provide students with hands-on experience and practical training.Strong industry collaborations provide internships, research opportunities, and industry-sponsored projects.The faculty emphasizes research and innovation, pushing the boundaries of engineering knowledge.An entrepreneurial mindset is fostered, with support for student start-ups and ventures.Student organizations and competitions enhance networking and skills development.Professional development services and career-focused events prepare students for successful engineering careers.International opportunities such as study abroad and exchange programs broaden students' perspectives.The faculty is committed to producing skilled engineers equipped to tackle global challenges.",
                    underLine: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/eng4.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(20),
                  child: AuthButton(
                    text: "Apply Now",
                    onPressed: () {
                      Get.toNamed(Routes.AplyyEngScreen);
                    },
                  ),
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
