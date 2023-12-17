// ignore_for_file: file_names, unused_import, prefer_const_constructors, non_constant_identifier_names, avoid_print, unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/home/Searchform.dart';
import 'package:flutter_uni_app/view/widget/home/carditem_scree.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  List<Map> imageslider = [
    {"id": 1, "ImagePath": 'assets/images/Alexandria-University-Egypt 1.png'},
    {"id": 2, "ImagePath": 'assets/images/univrsty.png'},
  ];
  List<Map> imageslider2 = [
    {
      "id": 3,
      "ImagePath": 'assets/images/michael-marsh-U0dBV_QeiYk-unsplash 1.png'
    },
    {"id": 4, "ImagePath": 'assets/images/institutes.png'}
  ];

  final CarouselController carouselController = CarouselController();
  int Curntindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.center,
                child: TextUtils(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    text: "Welcome to universities and institutes.",
                    color: Colors.black,
                    underLine: TextDecoration.underline),
              ),
              SizedBox(
                height: 3.h,
              ),
              Stack(
                children: [
                  CarouselSlider(
                    items: imageslider.map((imageUrl) {
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
              AuthButton(
                  text: "University",
                  onPressed: () async {
                    String userId = auth.currentUser!.uid;
                    print('User ID: $userId');
                    DocumentSnapshot<Map<String, dynamic>> snapshot =
                        await FirebaseFirestore.instance
                            .collection("Users")
                            .doc(userId)
                            .get();
                    if (userId == 'ezZ0YgH2f8cVG77GA4nUJzPYBjD3') {
                      Get.toNamed(Routes.MainUniversty);
                    } else {
                      Get.toNamed(Routes.universityScreen);
                    }
                  }),
              SizedBox(
                height: 5.h,
              ),
              Stack(
                children: [
                  CarouselSlider(
                    items: imageslider2.map((imageUrl) {
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
              AuthButton(
                  text: "Institutes",
                  onPressed: () async {
                    String userId = auth.currentUser!.uid;
                    print('User ID: $userId');
                    DocumentSnapshot<Map<String, dynamic>> snapshot =
                        await FirebaseFirestore.instance
                            .collection("Users")
                            .doc(userId)
                            .get();
                    if (userId == 'ezZ0YgH2f8cVG77GA4nUJzPYBjD3') {
                      Get.toNamed(Routes.MainUniversty);
                    } else {
                      Get.toNamed(Routes.institutes_Screen);
                    }
                  }),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
