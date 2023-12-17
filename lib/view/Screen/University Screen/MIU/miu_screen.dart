// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MiuUniverstyScreen extends StatefulWidget {
  const MiuUniverstyScreen({super.key});

  @override
  State<MiuUniverstyScreen> createState() => _MiuUniverstyScreenState();
}

class _MiuUniverstyScreenState extends State<MiuUniverstyScreen> {
  List<Map> MiuSlider = [
    {"id": 1, "ImagePath": 'assets/images/miu1.png'},
    {"id": 2, "ImagePath": 'assets/images/miu2.png'},
    {"id": 3, "ImagePath": 'assets/images/miu3.png'},
    {"id": 4, "ImagePath": 'assets/images/miu4.png'},
    {"id": 5, "ImagePath": 'assets/images/miu5.png'},
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
                      items: MiuSlider.map((imageUrl) {
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
                  text: "Misr International University",
                  underLine: TextDecoration.none,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextUtils(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    text:
                        "Since Misr International University was established, we have been committed to academic distinction and quality education. Looking back at the past years, I am filled with pride at the university’s achievements & continuous pursuit of intellectual, professional & creative development of its students.MIU is fully aware of the importance of opening up to the world. As such, we engage in a variety of contacts with renowned American & European universities, giving our students the golden chance to prepare themselves for entry into the global workforce.With our unceasing commitment to excellence & unwavering nurture of the expanding student body, Misr International University will continue to provide the necessary skills & knowledge for tomorrow’s professionals.",
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
                      "assets/images/Screenshot 2023-05-28 180242.png",
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
                            text: "DEPARTMENT OF ALSUN",
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
                      Get.toNamed(Routes.AlsunmiuScreen);
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
                      "assets/images/Screenshot 2023-05-28 180328.png",
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
                            text: "ORAL & DENTAL MEDICINE",
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
                      Get.toNamed(Routes.OralanddentalScreen);
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
                      "assets/images/Screenshot 2023-05-01 232005.png",
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
                            text: "DEPARTMENT OF ARCHITECTURE",
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
                      Get.toNamed(Routes.EngineeringMIUScreen);
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
