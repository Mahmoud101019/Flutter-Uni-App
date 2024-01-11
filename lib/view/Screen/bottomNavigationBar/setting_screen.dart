// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/setting/logout_screen.dart';
import 'package:flutter_uni_app/view/widget/setting/profile_image.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          ProfileImageScreen(),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          TextUtils(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              text: "General",
              color: textcolor2,
              underLine: TextDecoration.none),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          LogOutWidget()
        ],
      ),
    ));
  }
}
