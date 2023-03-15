import 'package:flutter/material.dart';
import 'dart:io';
import 'package:graduation/password.dart';
//import 'package:graduation/diagnose1.dart';
import 'package:graduation/get_start.dart';
import 'package:graduation/change_password.dart';
import 'package:graduation/email.dart';
import 'package:graduation/gender.dart';
import 'package:graduation/phone.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:

        //   start(),
      //debugShowCheckedModeBanner: false,

      //       pass(),
      //debugShowCheckedModeBanner: false,


      //diagnose page
         //  Home(),


      //chang_pass(),
      //debugShowCheckedModeBanner: false,


      //emailchange(),
      //debugShowCheckedModeBanner: false,

      //phone(),
      //debugShowCheckedModeBanner: false,

      genderchange(),
      debugShowCheckedModeBanner: false,


    );
  }
}