import 'package:flutter/material.dart';

class categoriesUtils {
  final String courseName;
  final String courseCount;
  final IconData courseIcon;
  categoriesUtils({
    required this.courseName,
    required this.courseCount,
    required this.courseIcon,
  });
}

List<categoriesUtils> categoriesUtilsList = [
  categoriesUtils(
    courseName: "Cyber Security",
    courseCount: "145 Courses",
    courseIcon: Icons.shield_outlined,
  ),
  categoriesUtils(
    courseName: "Data Science",
    courseCount: "120 Courses",
    courseIcon: Icons.cloud_outlined,
  ),
  categoriesUtils(
    courseName: "AI / ML",
    courseCount: "100 Courses",
    courseIcon: Icons.computer,
  ),
  categoriesUtils(
    courseName: "OOPS",
    courseCount: "150 Courses",
    courseIcon: Icons.hardware,
  ),
];
