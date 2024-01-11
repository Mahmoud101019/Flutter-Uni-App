// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:sizer/sizer.dart';

class MessegeScree extends StatelessWidget {
  const MessegeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: mainColor,
              elevation: 0,
            ),
            backgroundColor: Colors.white,
            body: ListView.separated(
                itemBuilder: (context, index) => Chats(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                itemCount: 5)));
  }

  Widget Chats() => InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1684093025993-dcb8dec5625e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60'),
              ),
              SizedBox(
                width: 10,
              ),
              TextUtils(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  text: "Mahmoud",
                  color: Colors.black,
                  underLine: TextDecoration.none),
              Divider(
                color: Colors.black,
                endIndent: 10,
                height: 2.5.h,
                indent: 10,
                thickness: 2,
              ),
            ],
          ),
        ),
      );
}
