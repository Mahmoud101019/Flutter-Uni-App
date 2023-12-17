// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, avoid_print, unused_local_variable, unused_import, empty_catches, prefer_const_constructors, duplicate_import

import 'dart:convert';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_uni_app/model/GetdataJoin.dart';
import 'package:flutter_uni_app/model/Getdata_model.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class Personlacontroller extends GetxController {
  final _fireStore = FirebaseFirestore.instance;
  File? file;
  final storage = FirebaseStorage.instance;
  final fileee = Rxn<File>();
  final fileName = RxnString();
  String? userId = FirebaseAuth.instance.currentUser?.uid;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  RxList<GetmyData> myDataList = <GetmyData>[].obs;
  final FirebaseFirestore _firestoree = FirebaseFirestore.instance;
  RxList<GetmyDataa> myDataListt = <GetmyDataa>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData(userId ?? "");
    fetchDataa(userId ?? "");
  }

  var imagepacker = ImagePicker();
  void savedata({
    required String name,
    required String address,
    required String nationalID,
    required String phonenumber,
    required String totaldegrees,
    required String selectedType,
    required String YearsType,
    required String? PDF,
  }) async {
    if (name.isNotEmpty &&
        address.isNotEmpty &&
        nationalID.isNotEmpty &&
        phonenumber.isNotEmpty &&
        totaldegrees.isNotEmpty &&
        selectedType.isNotEmpty &&
        YearsType.isNotEmpty) {
      await _fireStore.collection("Student").doc(userId).set({
        "ID": userId,
        "name": name,
        "address": address,
        "nationalID": nationalID,
        "phoneNumber": phonenumber,
        "Total_Degree": totaldegrees,
        "specialization": selectedType,
        "Years": YearsType,
        "PDf": PDF
      });
      update();
      Get.snackbar("Done", "Data has been Saved");
      Get.offNamed(Routes.mainScreen);
    } else {
      Get.snackbar("Error", "404");
    }
  }

  Future<void> selectFile() async {
    final pickedFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (pickedFile != null) {
      fileee.value = File(pickedFile.files.single.path!);
      fileName.value = basename(pickedFile.files.single.path!);
    }
  }

  uploadFile() async {
    if (fileee.value != null && fileName.value != null) {
      final taskSnapshot =
          await storage.ref().child(fileName.value!).putFile(fileee.value!);
      final downloadUrl = await taskSnapshot.ref.getDownloadURL();
      return downloadUrl;
    } else {
      Get.snackbar("title", "");
    }
  }

  Future<void> fetchData(String userId) async {
    try {
      final QuerySnapshot snapshot = await _firestore.collection('Users').get();
      final List<GetmyData> data = snapshot.docs.map((doc) {
        final id = doc.id;
        final name = doc['name'] as String;
        final email = doc['email'] as String;
        return GetmyData(Uid: id, name: name, Email: email);
      }).toList();

      // Filter the data based on the provided userId
      final filteredData = data.where((item) => item.Uid == userId).toList();

      if (filteredData.isEmpty) {
        Get.snackbar('User not found', '');
        return;
      }

      myDataList.value = filteredData;
    } catch (error) {
      print('Error fetching data: $error');
      Get.snackbar(error.toString(), '');
    }
  }

  Future<void> fetchDataa(String userId) async {
    try {
      final QuerySnapshot snapshot =
          await _firestoree.collection('Student').get();
      final List<GetmyDataa> data = snapshot.docs.map((doc) {
        final id = doc.id;
        final Map<String, dynamic>? docData =
            doc.data() as Map<String, dynamic>?;
        final name = docData?['name'] as String?;
        final address = docData?['address'] as String?;
        final nationalID = docData?['nationalID'] as String?;
        final phonenumber = docData?['phoneNumber'] as String?;
        final selectedType = docData?['specialization'] as String?;
        final totaldegrees = docData?['Total_Degree'] as String?;
        final Years = docData?['Years'] as String?;
        final PDF = docData?['PDf'] as String?;
        return GetmyDataa(
          Uid: id,
          name: name,
          address: address,
          nationalID: nationalID,
          phonenumber: phonenumber,
          selectedType: selectedType,
          totaldegrees: totaldegrees,
          Years: Years,
          PDF: PDF,
        );
      }).toList();

      // Filter the data based on the provided userId
      final filteredData = data.where((item) => item.Uid == userId).toList();

      if (filteredData.isEmpty) {
        return;
      }

      myDataListt.value = filteredData;
    } catch (error) {
      print('Error fetching data: $error');
      Get.snackbar('Error fetching data', 'masse1');
    }
  }

  //////////////////////
  void savedatajoin(
      {required String name,
      required String address,
      required String nationalID,
      required String phonenumber,
      required String totaldegrees,
      required String selectedType,
      required String YearsType,
      required String PDF,
      required String university,
      required String faculty}) async {
    if (name.isNotEmpty &&
        address.isNotEmpty &&
        nationalID.isNotEmpty &&
        phonenumber.isNotEmpty &&
        totaldegrees.isNotEmpty &&
        selectedType.isNotEmpty &&
        YearsType.isNotEmpty &&
        faculty.isNotEmpty &&
        university.isNotEmpty) {
      await _fireStore.collection("Student join").doc(userId).set({
        "ID": userId,
        "name": name,
        "address": address,
        "nationalID": nationalID,
        "phoneNumber": phonenumber,
        "Total_Degree": totaldegrees,
        "specialization": selectedType,
        "Years": YearsType,
        "PDf": PDF,
        "faculty": faculty,
        "university": university,
      });
      update();
      Get.snackbar("Done", "Apply has been Saved",
          duration: Duration(seconds: 5));
      // Get.offNamed(Routes.AplyyArt3Screen);
    } else {
      Get.snackbar("Error", "404");
    }
  }

  Future<void> SendEmail({
    required String subject,
    required String body,
  }) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailuri = Uri(
        scheme: 'mailto',
        path: 'mahmoudmagdy101019@gmail.com',
        query: encodeQueryParameters(<String, String>{
          'subject': subject,
          'body': body,
        }));
    if (await canLaunchUrl(emailuri)) {
      launchUrl(emailuri);
    } else {
      throw Exception("Could not lunch $emailuri");
    }
  }
}
