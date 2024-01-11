// ignore_for_file: file_names, prefer_const_constructors, must_be_immutable, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/personla_controller.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_text_from_field.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';

class MainUniversty extends StatelessWidget {
  MainUniversty({super.key});
  final controller = Get.find<Personlacontroller>();
  final Formkey = GlobalKey<FormState>();
  final TextEditingController recipientController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  // List<String> recipients = [
  //   'recipient1@gmail.com',
  //   'mahmoudmagdy101019@gmail.com'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: Formkey,
          child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
              Container(
                padding: EdgeInsets.all(10),
                child: TextUtils(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    text: "Admin Controller",
                    color: Colors.black,
                    underLine: TextDecoration.none),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextUtils(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    text: "Send Mail",
                    color: Colors.black,
                    underLine: TextDecoration.none),
              ),
              SizedBox(
                height: 10,
              ),
              // Container(
              //   padding: EdgeInsets.all(10),
              //   child: AuthTextFromField(
              //       controller: recipientController,
              //       obscureText: false,
              //       validator: (value) {
              //         if (value.toString().isEmpty) {
              //           return "invaled recipientController";
              //         } else {
              //           return null;
              //         }
              //       },
              //       prefixIcon: Icon(Icons.text_snippet),
              //       suffixIcon: const Text(''),
              //       hintText: "Subject:"),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: AuthTextFromField(
                    controller: subjectController,
                    obscureText: false,
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "invaled subjectController";
                      } else {
                        return null;
                      }
                    },
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: const Text(''),
                    hintText: "Email:"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: AuthTextFromField(
                    controller: bodyController,
                    obscureText: false,
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "invaled bodyController";
                      } else {
                        return null;
                      }
                    },
                    prefixIcon: Icon(Icons.message),
                    suffixIcon: const Text(''),
                    hintText: "message:"),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AuthButton(
                    text: "SEND",
                    onPressed: () {
                      if (Formkey.currentState!.validate()) {
                        final recipients = [recipientController.text];
                        final subject = subjectController.text;
                        final body = bodyController.text;
                        // controller.sendEmail(recipients, subject, body);
                        controller.SendEmail(subject: subject, body: body);
                      }
                    }),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_uni_app/logic/controllers/personla_controller.dart';

// class MainUniversty extends StatelessWidget {
//   MainUniversty({Key? key}) : super(key: key);
//   final PersonlaController controller = Get.find<PersonlaController>();
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   final TextEditingController recipientController = TextEditingController();
//   final TextEditingController subjectController = TextEditingController();
//   final TextEditingController bodyController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Form(
//           key: formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: recipientController,
//                 decoration: InputDecoration(
//                   hintText: "Recipient",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Invalid recipient email";
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: subjectController,
//                 decoration: InputDecoration(
//                   hintText: "Subject",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Invalid subject";
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: bodyController,
//                 decoration: InputDecoration(
//                   hintText: "Body",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Invalid body";
//                   }
//                   return null;
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   if (formKey.currentState!.validate()) {
//                     final recipients = [recipientController.text];
//                     final subject = subjectController.text;
//                     final body = bodyController.text;

//                     controller.sendEmail(recipients, subject, body);
//                   }
//                 },
//                 child: Text("Send Email"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

