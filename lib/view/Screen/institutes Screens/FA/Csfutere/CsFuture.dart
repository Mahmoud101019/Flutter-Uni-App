// ignore_for_file: prefer_const_constructors_in_immutables, file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CSfutureScreen extends StatefulWidget {
  CSfutureScreen({super.key});

  @override
  State<CSfutureScreen> createState() => _CSfutureScreenState();
}

class _CSfutureScreenState extends State<CSfutureScreen> {
  List<Map> ADSlider = [
    {"id": 1, "ImagePath": 'assets/images/csbhti.png'},
    {"id": 2, "ImagePath": 'assets/images/csbhti1.png'},
    {"id": 3, "ImagePath": 'assets/images/csbhti2.png'},
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
                  "assets/images/logofuture-removebg-preview.png",
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
                  text: "Computer Science",
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
                        "Welcome to the Faculty of Computer Science at Future Academy, an esteemed institution at the forefront of technological innovation and academic excellence. Situated in a dynamic learning environment, our faculty is dedicated to nurturing the next generation of computer science professionals, equipped with the skills and knowledge needed to thrive in the digital age.The Faculty of Computer Science at Future Academy offers a comprehensive range of undergraduate and postgraduate programs, covering areas such as software engineering, artificial intelligence, data science, cybersecurity, and computer networks. Our curriculum is designed to provide students with a strong foundation in computer science principles, while also integrating cutting-edge technologies and industry trends.Led by a distinguished faculty of experienced professors, researchers, and industry experts, we ensure a high standard of education through rigorous academic training, hands-on projects, and research opportunities. Students have access to state-of-the-art labs, advanced software, and industry-standard tools, enabling them to gain practical experience and develop critical thinking, problem-solving, and programming skills.Collaboration and teamwork are core aspects of our educational approach. Students engage in group projects, hackathons, and coding competitions, fostering effective communication, collaboration, and creative problem-solving abilities. Additionally, our faculty maintains strong industry partnerships, offering students opportunities for internships, industry projects, and mentorship from leading professionals.Ethics, professionalism, and innovation are fundamental values of the Faculty of Computer Science. We strive to instill a strong sense of ethical responsibility, integrity, and a mindset for lifelong learning in our students, preparing them to address complex challenges and contribute to technological advancements.As a student at the Faculty of Computer Science, Future Academy, you will be part of a vibrant community of learners. Our faculty provides a supportive and stimulating learning environment that encourages intellectual growth, creativity, and a passion for innovation.Join us at the Faculty of Computer Science, Future Academy, and embark on an exciting journey to become a highly skilled and innovative computer science professional. Gain the knowledge, practical skills, and technical expertise necessary to excel in the ever-evolving field of computer science, and contribute to shaping a digitally empowered future.",
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
                      "assets/images/csbhti3.png",
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
                      Get.toNamed(Routes.AplyyCSfutureScreen);
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
