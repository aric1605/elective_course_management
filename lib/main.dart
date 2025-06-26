import 'package:elective_course_management/Pages/MainActivity.dart';
import 'package:elective_course_management/Pages/course_details_page.dart';
import 'package:elective_course_management/Pages/login.dart';
import 'package:elective_course_management/Pages/register.dart';
import 'package:elective_course_management/Pages/searchPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
