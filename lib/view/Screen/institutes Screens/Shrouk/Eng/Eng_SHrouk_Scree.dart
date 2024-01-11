// ignore_for_file: prefer_const_constructors_in_immutables, file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class EngineeringShroukScreen extends StatefulWidget {
  EngineeringShroukScreen({super.key});

  @override
  State<EngineeringShroukScreen> createState() => _EngineeringShroukScreenState();
}

class _EngineeringShroukScreenState extends State<EngineeringShroukScreen> {
  List<Map> ADSlider = [
    {"id": 1, "ImagePath": 'assets/images/ENGSHrouk.png'},
    {"id": 2, "ImagePath": 'assets/images/ENGSHrouk1.png'},
    {"id": 3, "ImagePath": 'assets/images/ENGSHrouk2.png'},
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
                  "assets/images/logoshrouk__1_-removebg-preview.png",
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
                  text: "Higher Institute of Engineering",
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
                        "Welcome to the Faculty of Engineering at Al-Shorouk Academy, a leading institution dedicated to shaping the future of engineering excellence! Situated in Cairo, Egypt, our esteemed faculty is committed to providing a comprehensive education that equips students with the skills, knowledge, and innovation required to excel in the dynamic field of engineering.The Faculty of Engineering at Al-Shorouk Academy offers a wide range of undergraduate and postgraduate programs, including disciplines such as civil engineering, mechanical engineering, electrical engineering, and computer engineering. Our curriculum combines theoretical foundations with practical applications, ensuring that our graduates are well-prepared to tackle real-world engineering challenges.Led by a distinguished faculty of experienced professors, researchers, and industry experts, the faculty places a strong emphasis on academic rigor and practical training. Students benefit from state-of-the-art laboratories, advanced research facilities, and access to cutting-edge technologies, enabling them to gain hands-on experience and foster a spirit of innovation.Collaboration and teamwork are integral components of our educational philosophy. Through group projects, workshops, and extracurricular activities, students have the opportunity to work together, exchange ideas, and develop strong interpersonal skills. This approach prepares them for the collaborative nature of the engineering profession, where multidisciplinary teams are often required to solve complex problems.The Faculty of Engineering maintains close ties with industry partners, allowing students to engage in internships, industrial visits, and guest lectures. These connections provide invaluable exposure to real-world engineering practices and help bridge the gap between academia and industry. Additionally, students have the opportunity to participate in research projects, contributing to advancements in various engineering fields.As a student at the Faculty of Engineering, Al-Shorouk Academy, you will be part of a vibrant community of aspiring engineers. Our supportive learning environment encourages intellectual growth, critical thinking, and ethical engineering practices. We are dedicated to nurturing well-rounded individuals who possess technical expertise, leadership skills, and a commitment to making a positive impact on society.Join us at the Faculty of Engineering, Al-Shorouk Academy, and embark on an exciting journey to become a highly skilled and innovative engineer. Unlock your potential, explore new frontiers, and contribute to the advancement of engineering knowledge, while shaping a better future through the power of engineering excellence.",
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
                      "assets/images/ENGSHrouk3.png",
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
                      Get.toNamed(Routes.AplyyENGShroukScreen);
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
