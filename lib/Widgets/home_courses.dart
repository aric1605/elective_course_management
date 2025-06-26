import 'package:elective_course_management/Constants/course_details.dart';
import 'package:elective_course_management/Constants/home_courses_utils.dart';
import 'package:elective_course_management/Pages/course_details_page.dart';
import 'package:flutter/material.dart';

class HomeCourses extends StatelessWidget {
  const HomeCourses({super.key, required this.homeCoursesUtilsVar});
  final HomeCoursesUtils homeCoursesUtilsVar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseDetailPage(
              courseDetailsVar: courseDetail(
                courseName: homeCoursesUtilsVar.courseName,
                courseRating: homeCoursesUtilsVar.courseRating,
                courseLearners: homeCoursesUtilsVar.courseLearners,
                courseHours: homeCoursesUtilsVar.courseHours,
                courseTeacher: homeCoursesUtilsVar.courseTeacher,
                courseDifficulty: homeCoursesUtilsVar.courseDifficulty,
              ),
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        homeCoursesUtilsVar.courseName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            homeCoursesUtilsVar.courseRating,
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        homeCoursesUtilsVar.courseLearners,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Image.asset(homeCoursesUtilsVar.courseIcon),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
