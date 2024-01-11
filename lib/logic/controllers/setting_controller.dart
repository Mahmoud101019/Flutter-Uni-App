// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class SettingController extends GetxController
{
  String capital(String Profilename)
  {
    return Profilename.split(" ").map((str) =>str.capitalize).join(" ");
  }
}