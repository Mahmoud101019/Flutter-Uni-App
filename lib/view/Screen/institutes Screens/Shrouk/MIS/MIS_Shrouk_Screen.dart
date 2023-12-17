// ignore_for_file: prefer_const_constructors_in_immutables, file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MISScreen extends StatefulWidget {
  MISScreen({super.key});

  @override
  State<MISScreen> createState() => _MISScreenState();
}

class _MISScreenState extends State<MISScreen> {
  List<Map> ADSlider = [
    {"id": 1, "ImagePath": 'assets/images/MIS.png'},
    {"id": 2, "ImagePath": 'assets/images/MIS1.png'},
    {"id": 3, "ImagePath": 'assets/images/MIS2.png'},
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
                  text: "Management Information Systems",
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
                        "Welcome to the Faculty of Management Information Systems (MIS) at Al-Shorouk Academy, where innovation meets technology and business acumen! Situated in the vibrant city of Cairo, Egypt, our esteemed institution is dedicated to cultivating the next generation of professionals in the field of information systems. With a commitment to academic excellence and practical skills, we provide a dynamic learning environment where students can thrive and excel in the ever-evolving digital landscape.The Faculty of MIS at Al-Shorouk Academy offers a diverse range of undergraduate and postgraduate programs, encompassing areas such as database management, cybersecurity, e-commerce, business intelligence, and digital transformation. Our comprehensive curriculum is designed to equip students with the necessary knowledge and skills to navigate the complexities of the modern business world, leveraging technology for strategic advantage.At the heart of our educational philosophy lies a fusion of theory and application, where students gain hands-on experience through real-world projects, internships, and industry collaborations. We believe in the power of experiential learning, enabling students to bridge the gap between classroom knowledge and practical implementation. Through this approach, our graduates are well-prepared to tackle the challenges of the digital era and make meaningful contributions to organizations across various sectors.The Faculty of MIS boasts a faculty comprised of accomplished experts, researchers, and practitioners in the field of information systems. With their vast industry experience and academic expertise, they provide mentorship, guidance, and cutting-edge insights to students, ensuring their professional development and success. Moreover, our state-of-the-art facilities and advanced technological resources create an optimal learning environment, fostering innovation and creativity.As a student at the Faculty of MIS, Al-Shorouk Academy, you will be part of a vibrant community of learners, where collaboration, critical thinking, and problem-solving skills are nurtured. We encourage students to engage in extracurricular activities, clubs, and competitions that enhance their skills and expand their network. Furthermore, our strong industry connections provide opportunities for internships, guest lectures, and industry visits, further bridging the gap between academia and the corporate world.Join us at the Faculty of MIS, Al-Shorouk Academy, and embark on an exciting journey to become a future leader in the field of management information systems. Explore the limitless possibilities of technology and business integration while acquiring the skills needed to drive digital transformation and shape the future of organizations.",
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
                      "assets/images/MIS3.png",
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
                      Get.toNamed(Routes.AplyyMISShroukScreen);
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
