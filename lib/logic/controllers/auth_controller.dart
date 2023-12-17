// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member, avoid_print, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/model/massege_model_user.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authcontroller extends GetxController {
  bool isvisibility = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  var displayUsername = ''.obs;
  var displayuserphoto = ''.obs;
  var displayuseremail = ''.obs;
  var Googlesignin = GoogleSignIn();

  User? get userprofile => auth.currentUser;

  @override
  void onInit() {
    displayUsername.value =
        (userprofile != null ? userprofile!.displayName : "") ?? '';
    displayuserphoto.value =
        (userprofile != null ? userprofile!.photoURL : "") ?? '';
    displayuseremail.value =
        (userprofile != null ? userprofile!.email : "") ?? '';
    super.onInit();
  }

  void visibility() {
    isvisibility = !isvisibility;

    update();
  }

  void signupfirebase({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      await auth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((value) => () {
                displayUsername.value = name;
                displayuseremail.value = email;
                auth.currentUser!.updateDisplayName(name);
              });
      Usermodel model =
          Usermodel(email: email, name: name, uId: userprofile!.uid);
      FirebaseFirestore.instance
          .collection("Users")
          .doc(userprofile!.uid)
          .set(model.ToMap())
          .then((value) {
        displayUsername.value = name;
        displayuseremail.value = email;
        auth.currentUser!.updateDisplayName(name);
      }).catchError((error) {
        Get.snackbar(
          'Error!',
          error.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: mainColor,
          colorText: Colors.white,
        );
      });
      update();
      Get.snackbar(
        "Lets Go",
        "The account has been done",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: mainColor,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
      Get.offNamed(Routes.loginScreen);
    } on FirebaseAuthException catch (error) {
      String title = error.code.replaceFirst(RegExp('-'), '  ').capitalize!;
      String message = '';
      if (error.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (error.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else {
        message = error.message.toString();
      }

      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: Colors.black,
        duration: const Duration(seconds: 5),
      );
    } catch (error) {
      Get.snackbar(
        "Error!",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: Colors.black,
        duration: const Duration(seconds: 5),
      );
    }
  }

  //////////
  void CreateUser({
    required String name,
    required String email,
    required String uId,
  }) {
    Usermodel model = Usermodel(email: email, name: name, uId: uId);
    FirebaseFirestore.instance
        .collection("Users")
        .doc(uId)
        .set(model.ToMap())
        .then((value) {
      displayUsername.value = name;
      displayuseremail.value = email;
      auth.currentUser!.updateDisplayName(name);
    }).catchError((error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: mainColor,
        colorText: Colors.white,
      );
    });
  }
  //////////

  void loginfirebase({required String email, required String password}) async {
    try {
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        displayUsername.value = auth.currentUser?.displayName ?? '';
        displayuseremail.value = auth.currentUser?.email ?? '';
        displayuserphoto.value = auth.currentUser?.photoURL ?? '';
        String userId = auth.currentUser!.uid;
        print('User ID: $userId');
        DocumentSnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance
                .collection("Users")
                .doc(userId)
                .get();
        if (userId == 'ezZ0YgH2f8cVG77GA4nUJzPYBjD3') {
          Get.offNamed(Routes.mainScreen);
        } else {
          Get.offNamed(Routes.personalInformation);
        }
      });

      update();
      // Get.offNamed(Routes.personalInformation);
    } on FirebaseAuthException catch (error) {
      String title = error.code.replaceFirst(RegExp('-'), '  ').capitalize!;
      String message = '';
      if (error.code == 'user-not-found') {
        message =
            ' Account does not exists for that $email.. Create your account by signing up..';
      } else if (error.code == 'wrong-password') {
        message = ' Invalid Password... PLease try again! ';
      } else {
        message = error.message.toString();
      }
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: mainColor,
        colorText: Colors.black,
        duration: const Duration(seconds: 5),
      );
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: mainColor,
        colorText: Colors.white,
      );
    }
  }

  ///////////////////////////

  void googlesignupApp() async {
    try {
      final GoogleSignInAccount? googleUser = await Googlesignin.signIn();

      displayUsername.value = googleUser!.displayName!;
      displayuserphoto.value = googleUser.photoUrl!;
      displayuseremail.value = googleUser.email;

      GoogleSignInAuthentication googleSignInAuthentication =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );
      await auth.signInWithCredential(credential);
      Usermodel model = Usermodel(
          email: googleUser.email,
          name: googleUser.email,
          uId: userprofile!.uid);
      FirebaseFirestore.instance
          .collection("Users")
          .doc(userprofile!.uid)
          .set(model.ToMap())
          .then((value) {
        displayUsername.value = googleUser.displayName!;
        displayuseremail.value = googleUser.email;
        auth.currentUser!.updateDisplayName(googleUser.email);
      }).catchError((error) {
        Get.snackbar(
          'Error!',
          error.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: mainColor,
          colorText: Colors.white,
        );
      });
      update();
      Get.snackbar(
        "Welcome",
        "",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        colorText: Colors.black,
      );
      Get.offNamed(Routes.personalInformation);
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(255, 86, 86, 86),
        colorText: Colors.white,
      );
    }
  }

  ///////////////////////////
  void resetpassword(
    String emil,
  ) async {
    try {
      await auth.sendPasswordResetEmail(email: emil);

      update();
      Get.back();
    } on FirebaseAuthException catch (error) {
      String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String message = '';

      if (error.code == 'user-not-found') {
        message =
            ' Account does not exists for that $emil.. Create your account by signing up..';
      } else {
        message = error.message.toString();
      }
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  //////////////////////////
  void signOutFromApp() async {
    try {
      await auth.signOut();
      await Googlesignin.signOut();
      displayUsername.value = '';
      displayuserphoto.value = '';
      //displayUserEmail.value = '';
      update();

      Get.offNamed(Routes.signupScreen);
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }
}
