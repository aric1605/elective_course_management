import 'package:elective_course_management/Pages/MainActivity.dart';
import 'package:elective_course_management/Pages/login.dart';
import 'package:elective_course_management/Pages/register.dart';
import 'package:elective_course_management/Pages/searchPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      title: "Elective Course Management",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(),
      builder: (context, child) {
        return Container(color: Color(0xFFFFFFFF), child: child);
      },
      routes: {
        '/': (context) => Login(),
        '/home': (context) => mainActivity(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/search': (context) => Searchpage(),
      },
    ),
  );
}
