// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, unused_import, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/personla_controller.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';

class AplyyHssAucScreen extends StatelessWidget {
  AplyyHssAucScreen({super.key});
  final controller = Get.find<Personlacontroller>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          title: Text("Your Data"),
          centerTitle: true,
        ),
        body: Obx(
          () {
            if (controller.myDataList.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: controller.myDataList.length,
              itemBuilder: (context, index) {
                final myData = controller.myDataList[index];
                return ListTile(
                    title: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Image.asset("assets/images/logo.png")),
                          Expanded(
                              child: Image.asset(
                                  "assets/images/auclogoauc-removebg-preview.png")),
                        ],
                      ),
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
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            text: "Faculty of HUSS In AUC.",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(color: mainColor),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(color: Colors.white),
                                child: TextUtils(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    text: "Username",
                                    color: Colors.black,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(color: mainColor),
                                child: TextUtils(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    text: myData.name.toString(),
                                    color: Colors.white,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(color: Colors.white),
                                child: TextUtils(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    text: "Email",
                                    color: Colors.black,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(color: mainColor),
                                child: TextUtils(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    text: myData.Email.toString(),
                                    color: Colors.white,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(color: Colors.white),
                                child: TextUtils(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    text: "User ID",
                                    color: Colors.black,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(color: mainColor),
                                child: TextUtils(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    text: myData.Uid.toString(),
                                    color: Colors.white,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: AuthButton(
                            text: "Apply",
                            onPressed: () {
                              Get.toNamed(Routes.AplyyHssAuc2Screen);
                            }),
                      )
                    ],
                  ),
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
