// ignore_for_file: prefer_const_constructors_in_immutables, file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BusinessBHTIcreen extends StatefulWidget {
  BusinessBHTIcreen({super.key});

  @override
  State<BusinessBHTIcreen> createState() => _BusinessBHTIcreenState();
}

class _BusinessBHTIcreenState extends State<BusinessBHTIcreen> {
  List<Map> ADSlider = [
    {"id": 1, "ImagePath": 'assets/images/bhti.png'},
    {"id": 2, "ImagePath": 'assets/images/bhti1.png'},
    {"id": 3, "ImagePath": 'assets/images/bhti2.png'},
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
                  "assets/images/bhti-removebg-preview.png",
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
                  text: "Business",
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
                        "Welcome to the Faculty of Business at the Higher Technological Institute, a prestigious institution dedicated to fostering the next generation of business leaders equipped with advanced knowledge, entrepreneurial skills, and technological expertise. Situated in Egypt, our faculty offers comprehensive programs that combine business principles with cutting-edge technology applications, preparing students for success in the dynamic world of business.The Faculty of Business at the Higher Technological Institute provides a diverse range of undergraduate and postgraduate programs, including fields such as business administration, marketing, finance, entrepreneurship, and international business. Our curriculum is designed to develop a strong foundation in business fundamentals while integrating technological advancements that drive innovation and strategic decision-making.Led by a distinguished faculty of experienced professors and industry practitioners, the faculty ensures high-quality education through a blend of theoretical instruction and practical experiences. Students have access to state-of-the-art business labs, simulation tools, and industry-standard software, enabling them to apply theoretical concepts to real-world business scenarios.Collaboration and teamwork are integral components of our educational approach. Students engage in group projects, case studies, and interactive learning activities, fostering effective communication skills, critical thinking, and problem-solving abilities. Additionally, guest lectures, industry partnerships, and internships provide students with valuable insights into current business practices and networking opportunities.Ethics, professionalism, and innovation are core values of the Faculty of Business. We aim to instill a strong sense of ethical responsibility, integrity, and sustainable business practices in our students, preparing them to navigate complex business environments while contributing positively to society.As a student at the Faculty of Business, Higher Technological Institute, you will be part of a vibrant community of aspiring business professionals. Our faculty provides a supportive learning environment that promotes intellectual growth, creativity, and a strong entrepreneurial spirit.Join us at the Faculty of Business, Higher Technological Institute, and embark on an exciting journey to become a well-rounded business professional. Gain the knowledge, skills, and technological competencies necessary to succeed in various business sectors, lead innovation, and make a positive impact in the global business landscape.",
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
                      "assets/images/bhti3.png",
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
                      Get.toNamed(Routes.AplyyBusinessBHTIcreen);
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
