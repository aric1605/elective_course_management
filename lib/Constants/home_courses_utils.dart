import 'package:flutter/material.dart';

class HomeCoursesUtils {
  final String courseName;
  final String courseRating;
  final String courseLearners;
  final String courseIcon;
  final String courseTeacher;
  final String courseHours;
  final String courseDifficulty;
  HomeCoursesUtils({
    required this.courseName,
    required this.courseRating,
    required this.courseLearners,
    required this.courseIcon,
    required this.courseTeacher,
    required this.courseHours,
    required this.courseDifficulty,
  });
}

List<HomeCoursesUtils> homeCoursesUtilsList = [
  HomeCoursesUtils(
    courseName: "Cyber Security",
    courseRating: "4.5",
    courseLearners: "1.5k Learners",
    courseIcon: "assets/1.png",
    courseTeacher: "Aric Vasaya",
    courseDifficulty: "Beginner",
    courseHours: "40 Hours",
  ),
  HomeCoursesUtils(
    courseName: "App Development",
    courseRating: "5",
    courseLearners: "800 Learners",
    courseIcon: "assets/2.png",
    courseTeacher: "Aric Vasaya",
    courseDifficulty: "Beginner",
    courseHours: "40 Hours",
  ),
  HomeCoursesUtils(
    courseName: "Web Development",
    courseRating: "4.1",
    courseLearners: "500 Learners",
    courseIcon: "assets/3.png",
    courseTeacher: "Aric Vasaya",
    courseDifficulty: "Beginner",
    courseHours: "0 Hours",
  ),
  HomeCoursesUtils(
    courseName: "Data Science",
    courseRating: "3.8",
    courseLearners: "700 Learners",
    courseIcon: "assets/4.png",
    courseTeacher: "Aric Vasaya",
    courseDifficulty: "Beginner",
    courseHours: "40 Hours",
  ),
  HomeCoursesUtils(
    courseName: "Web 3",
    courseRating: "4.8",
    courseLearners: "2k Learners",
    courseIcon: "assets/1.png",
    courseTeacher: "Aric Vasaya",
    courseDifficulty: "Beginner",
    courseHours: "40 Hours",
  ),
];
