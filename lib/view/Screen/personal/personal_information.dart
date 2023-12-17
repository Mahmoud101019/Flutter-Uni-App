// ignore_for_file: non_constant_identifier_names, must_be_immutable, sort_child_properties_last, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, unused_import, avoid_print, no_leading_underscores_for_local_identifiers, unnecessary_null_comparison, prefer_const_constructors, depend_on_referenced_packages, unused_local_variable, unused_field

import 'dart:io';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/my_string.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/personla_controller.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_text_from_field.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class PersonalInformation extends StatefulWidget {
  PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  static String? PDF;
  final Formkey = GlobalKey<FormState>();

  final controller = Get.find<Personlacontroller>();

  final TextEditingController Name = TextEditingController();

  final TextEditingController address = TextEditingController();

  final TextEditingController nationalID = TextEditingController();

  final TextEditingController phonenumber = TextEditingController();

  final TextEditingController totaldegrees = TextEditingController();
  var selectedCurrency, selectedType;
  var SelectYears, YearsType;
  final List<String> _accountType = [
    'American',
    'IG',
    'ثانوي عام أدبي ',
    'ثانوي عام علمي رياضيات',
    'ثانوي عام علمي علوم',
    'ثانوي أزهري',
  ];
  final List<String> Years = [
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          title: TextUtils(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              text: "Uni Smart Admission",
              color: Colors.white,
              underLine: TextDecoration.none),
          centerTitle: true,
          actions: [
            Image.asset(
              "assets/images/unisa white 2.png",
              width: 50,
              height: 50,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 1.5.h),
                child: Form(
                  key: Formkey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: "Name",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: ":الاسم",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: Name,
                          obscureText: false,
                          validator: (value) {
                            if (!RegExp(validationName).hasMatch(value)) {
                              return "invaled Email";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "Name"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: "Address",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: ":العنوان",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: address,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length < 10) {
                              return "invaled address";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "address"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: "National ID:",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: ":البطاقة الشخصية",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: nationalID,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length != 14) {
                              return "invaled nationalID";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "national ID:"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: "Phone Number:",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: ":رقم الهاتف",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: phonenumber,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length != 11) {
                              return "invaled phonenumber";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "phone number:"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: "Total Degrees:",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: ":مجموع الدرجات",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: totaldegrees,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return "invaled degrees";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "total degrees:"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: "Specialization:",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: ":شعبة",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      DropdownButtonFormField(
                        validator: (value) {
                          if (value == null) {
                            Get.snackbar("Please Fill Your Specialization", "");
                          }
                          return null;
                        },
                        items: _accountType
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
                        onChanged: (selectedAccountType) {
                          setState(() {
                            selectedType = selectedAccountType;
                          });
                        },
                        value: selectedType,
                        isExpanded: false,
                        borderRadius: BorderRadius.circular(20),
                        hint: Text(
                          'Choose Certificate Type',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      ////////////////////////////////////
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: "Graduation Year:",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                            TextUtils(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                text: ":سنة التخرج",
                                color: Colors.black,
                                underLine: TextDecoration.none),
                          ],
                        ),
                      ),
                      DropdownButtonFormField(
                        validator: (value) {
                          if (value == null) {
                            Get.snackbar("Please Fill The Years", "");
                          }
                          return null;
                        },
                        items: Years.map((value) => DropdownMenuItem(
                              alignment: Alignment.center,
                              child: Text(
                                value,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                              value: value,
                            )).toList(),
                        onChanged: (selectedYearsType) {
                          setState(() {
                            YearsType = selectedYearsType;
                          });
                        },
                        value: YearsType,
                        isExpanded: false,
                        borderRadius: BorderRadius.circular(20),
                        hint: Text(
                          'Choose The Year',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AuthButton(
                              text: 'Select PDF',
                              onPressed: controller.selectFile),
                          SizedBox(height: 16),
                          Obx(() => Text(controller.fileName.value ?? '')),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 200,
                            child: AuthButton(
                              text: 'Upload PDF',
                              onPressed: () async {
                                PDF = await controller.uploadFile();
                                print("========================");
                                print(PDF);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      GetBuilder<Personlacontroller>(builder: (_) {
                        return AuthButton(
                            text: "ADD",
                            onPressed: () {
                              // Get.offNamed(Routes.mainScreen);
                              if (Formkey.currentState!.validate() &&
                                  PDF != null) {
                                String _name = Name.text.trim();
                                String _adrees = address.text.trim();
                                String _nationalId = nationalID.text.trim();
                                String _phonenumber = phonenumber.text.trim();
                                String _totaldegrees = totaldegrees.text.trim();
                                controller.savedata(
                                    name: _name,
                                    address: _adrees,
                                    nationalID: _nationalId,
                                    phonenumber: _phonenumber,
                                    totaldegrees: _totaldegrees,
                                    selectedType: selectedType,
                                    YearsType: YearsType,
                                    PDF: PDF);
                              } else {
                                Get.snackbar(
                                    "Error404", "Please Check Your Data");
                              }
                            });
                      }),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
