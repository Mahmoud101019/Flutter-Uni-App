// ignore_for_file: prefer_const_constructors_in_immutables, file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class EngBHTIcreen extends StatefulWidget {
  EngBHTIcreen({super.key});

  @override
  State<EngBHTIcreen> createState() => _EngBHTIcreenState();
}

class _EngBHTIcreenState extends State<EngBHTIcreen> {
  List<Map> ADSlider = [
    {"id": 1, "ImagePath": 'assets/images/engbhti.png'},
    {"id": 2, "ImagePath": 'assets/images/engbhti1.png'},
    {"id": 3, "ImagePath": 'assets/images/engbhti2.png'},
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
                  text: "Engineering",
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
                        "Welcome to the Faculty of Engineering at the Higher Technological Institute, a renowned institution dedicated to nurturing the next generation of engineering professionals. Situated in Egypt, our faculty offers comprehensive programs that combine theoretical knowledge with practical skills, equipping students with the expertise required to excel in the ever-evolving field of engineering.The Faculty of Engineering at the Higher Technological Institute provides a diverse range of undergraduate and postgraduate programs, including disciplines such as civil engineering, mechanical engineering, electrical engineering, computer engineering, and industrial engineering. Our curriculum is designed to develop a solid foundation in engineering principles while incorporating innovative technologies and industry best practices.Led by a distinguished faculty of experienced professors and industry experts, the faculty ensures a high standard of education through rigorous academic training, research activities, and practical experiences. Students have access to state-of-the-art labs, cutting-edge equipment, and simulation tools, enabling them to gain hands-on experience and develop critical thinking, problem-solving, and technical skills.Collaboration and teamwork are integral aspects of our educational approach. Students engage in group projects, participate in competitions, and work on real-world engineering challenges, fostering effective communication, teamwork, and project management skills. Moreover, industry partnerships, guest lectures, and internships provide students with valuable industry insights and networking opportunities.Ethics, professionalism, and innovation are core values of the Faculty of Engineering. We strive to instill a strong sense of ethical responsibility, integrity, and sustainable engineering practices in our students, preparing them to address complex engineering problems and contribute to societal advancements.As a student at the Faculty of Engineering, Higher Technological Institute, you will be part of a vibrant community of aspiring engineers. Our faculty provides a supportive learning environment that encourages intellectual growth, creativity, and hands-on exploration.Join us at the Faculty of Engineering, Higher Technological Institute, and embark on an exciting journey to become a highly skilled and innovative engineer. Gain the knowledge, practical skills, and engineering mindset necessary to tackle global challenges, drive technological advancements, and shape a better future through the power of engineering excellence.",
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
                      "assets/images/engbhti3.png",
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
                      Get.toNamed(Routes.AplyyEngBHTIcreen);
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
