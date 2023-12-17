// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';

class AplyyArt3Screen extends StatelessWidget {
  const AplyyArt3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          title: Text("Art & Design"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(child: Image.asset("assets/images/logo.png")),
                Expanded(
                    child: Image.asset(
                        "assets/images/logobuead-removebg-preview.png")),
              ],
            ),
            Column(
              children: [
                TextUtils(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    text: "Welcome To",
                    color: Colors.black,
                    underLine: TextDecoration.none),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(color: textcolor2),
                  child: TextUtils(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      text: "Art & Design In Bue",
                      color: Colors.black,
                      underLine: TextDecoration.none),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: TextUtils(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      text: "Your data has been registered successfully.",
                      color: Colors.black,
                      underLine: TextDecoration.none),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: AuthButton(
                    text: "Finish Apply",
                    onPressed: () {
                      Get.defaultDialog(
                        title: "Registered Successfully",
                        titleStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        middleText: 'Your data has been successfully',
                        middleTextStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        backgroundColor: Colors.grey,
                        radius: 15,
                        textCancel: " Back ",
                        cancelTextColor: Colors.white,
                        textConfirm: " Done ",
                        confirmTextColor: Colors.white,
                        onCancel: () {
                          Get.toNamed(Routes.AplyyArt3Screen);
                        },
                        onConfirm: () {
                          Get.toNamed(Routes.mainScreen);
                        },
                        buttonColor: mainColor,
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
