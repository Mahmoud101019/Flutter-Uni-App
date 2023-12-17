// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/auth_controller.dart';
import 'package:flutter_uni_app/logic/controllers/setting_controller.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProfileImageScreen extends StatelessWidget {
  ProfileImageScreen({super.key});

  final controller = Get.find<SettingController>();
  final authcontroller = Get.find<Authcontroller>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              authcontroller.displayuserphoto.value,
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextUtils(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        text: controller
                            .capital(authcontroller.displayUsername.value),
                        color: textcolor,
                        underLine: TextDecoration.none),
                    TextUtils(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w800,
                        text: controller
                            .capital(authcontroller.displayuseremail.value),
                        color: textcolor,
                        underLine: TextDecoration.none),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
