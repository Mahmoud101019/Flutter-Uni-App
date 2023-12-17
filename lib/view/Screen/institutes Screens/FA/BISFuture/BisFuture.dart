// ignore_for_file: prefer_const_constructors_in_immutables, file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BISfutureScreen extends StatefulWidget {
  BISfutureScreen({super.key});

  @override
  State<BISfutureScreen> createState() => _BISfutureScreenState();
}

class _BISfutureScreenState extends State<BISfutureScreen> {
  List<Map> ADSlider = [
    {"id": 1, "ImagePath": 'assets/images/Bisfu.png'},
    {"id": 2, "ImagePath": 'assets/images/Bisfu1.png'},
    {"id": 3, "ImagePath": 'assets/images/Bisfu2.png'},
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
                  text: "Business Information Systems",
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
                        "Welcome to the Faculty of Business Information Systems at Future Academy, a cutting-edge institution dedicated to merging the worlds of business and technology. Situated in a dynamic learning environment, our faculty offers comprehensive programs that integrate business acumen with the power of information systems, preparing students for success in the digital-driven business landscape.The Faculty of Business Information Systems at Future Academy provides a range of undergraduate and postgraduate programs, encompassing areas such as business analytics, enterprise resource planning, digital marketing, e-commerce, and information systems management. Our curriculum is designed to equip students with the knowledge and skills to leverage technology for strategic decision-making, process optimization, and business innovation.Led by a distinguished faculty of experienced professors, researchers, and industry practitioners, we ensure a high standard of education through a blend of theoretical instruction and practical experiences. Students have access to state-of-the-art labs, cutting-edge software, and real-world case studies, enabling them to develop critical thinking, problem-solving, and hands-on expertise.Collaboration and teamwork are fundamental aspects of our educational philosophy. Students engage in group projects, interactive workshops, and industry simulations, fostering effective communication, collaboration, and adaptability skills. Additionally, our strong industry connections provide opportunities for internships, guest lectures, and mentorship, allowing students to gain valuable insights from industry professionals.Ethics, professionalism, and innovation are core values of the Faculty of Business Information Systems. We strive to instill a strong sense of ethical responsibility, integrity, and a mindset for continuous learning in our students, preparing them to address complex business challenges while embracing technological advancements.As a student at the Faculty of Business Information Systems, Future Academy, you will be part of a vibrant community of learners. Our faculty provides a supportive learning environment that encourages intellectual growth, creativity, and entrepreneurial thinking.Join us at the Faculty of Business Information Systems, Future Academy, and embark on an exciting journey to become a highly skilled and innovative business technologist. Gain the knowledge, practical skills, and technological competencies needed to navigate the digital landscape, drive business transformation, and make a positive impact in organizations of all sizes.",
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
                      "assets/images/Bisfu3.png",
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
                      Get.toNamed(Routes.AplyyBISfutureScreen);
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
