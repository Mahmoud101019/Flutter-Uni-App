// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, unused_import, unused_local_variable, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/personla_controller.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_text_from_field.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';

class AplyyEngineeringTechnology2Screen extends StatefulWidget {
  AplyyEngineeringTechnology2Screen({super.key});

  @override
  State<AplyyEngineeringTechnology2Screen> createState() => _AplyyEngineeringTechnology2ScreenState();
}

class _AplyyEngineeringTechnology2ScreenState extends State<AplyyEngineeringTechnology2Screen> {
  final controller = Get.find<Personlacontroller>();

  final Formkey = GlobalKey<FormState>();

  var Selectfaculty, facultyType;
  var Selectuniversity, universityType;
  final List<String> faculty = [
    "Department of Basic Sciences",
    "Architectural Engineering",
    "civil engineering ",
    "mechanical engineering",
    "electrical engineering"
  ];
  final List<String> university = [
    "BUC",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          title: Text("Your File"),
          centerTitle: true,
        ),
        body: Obx(
          () {
            if (controller.myDataListt.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: controller.myDataListt.length,
              itemBuilder: (context, index) {
                final myData = controller.myDataListt[index];
                return ListTile(
                    title: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Image.asset("assets/images/logo.png")),
                          Expanded(
                              child: Image.asset(
                                  "assets/images/download-removebg-preview.png")),
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
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            text: "Engineering & Technology In Badr Uni",
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
                                    text: "Adrees",
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
                                    text: myData.address.toString(),
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
                                    text: "nationalID",
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
                                    text: myData.nationalID.toString(),
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
                                    text: "phonenumber",
                                    color: Colors.black,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(color: mainColor),
                                child: TextUtils(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    text: myData.phonenumber.toString(),
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
                                    text: "specialization ",
                                    color: Colors.black,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(color: mainColor),
                                child: TextUtils(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    text: myData.selectedType.toString(),
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
                                    text: "totaldegrees ",
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
                                    text: myData.totaldegrees.toString(),
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
                                    text: "Graduation Year ",
                                    color: Colors.black,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(color: mainColor),
                                child: TextUtils(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    text: myData.Years.toString(),
                                    color: Colors.white,
                                    underLine: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: Formkey,
                        child: Column(
                          children: [
                            DropdownButtonFormField(
                              validator: (value) {
                                if (value == null) {
                                  Get.snackbar("Please Fill The Faculty", "");
                                }
                                return null;
                              },
                              items: faculty
                                  .map((value) => DropdownMenuItem(
                                        alignment: Alignment.center,
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        value: value,
                                      ))
                                  .toList(),
                              onChanged: (selectedYearsType) {
                                setState(() {
                                  facultyType = selectedYearsType;
                                });
                              },
                              value: facultyType,
                              isExpanded: false,
                              borderRadius: BorderRadius.circular(20),
                              hint: Text(
                                'Choose The faculty',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            DropdownButtonFormField(
                              validator: (value) {
                                if (value == null) {
                                  Get.snackbar(
                                      "Please Fill The University", "");
                                }
                                return null;
                              },
                              items: university
                                  .map((value) => DropdownMenuItem(
                                        alignment: Alignment.center,
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        value: value,
                                      ))
                                  .toList(),
                              onChanged: (selectedYearsType) {
                                setState(() {
                                  universityType = selectedYearsType;
                                });
                              },
                              value: universityType,
                              isExpanded: false,
                              borderRadius: BorderRadius.circular(20),
                              hint: Text(
                                'Choose The University',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ],
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
                            text: "Continue Apply",
                            onPressed: () {
                              if (Formkey.currentState!.validate()) {
                                controller.savedatajoin(
                                    name: myData.name.toString(),
                                    address: myData.address.toString(),
                                    nationalID: myData.nationalID.toString(),
                                    phonenumber: myData.phonenumber.toString(),
                                    totaldegrees:
                                        myData.totaldegrees.toString(),
                                    selectedType:
                                        myData.selectedType.toString(),
                                    YearsType: myData.Years.toString(),
                                    PDF: myData.PDF.toString(),
                                    faculty: facultyType,
                                    university: universityType);
                                Get.offNamed(Routes.AplyyEngineeringTechnology3Screen);
                              }
                            }),
                      ),
                      SizedBox(
                        height: 50,
                      ),
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
