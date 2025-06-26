import 'package:elective_course_management/Constants/categories_utils.dart';
import 'package:elective_course_management/Constants/home_courses_utils.dart';
import 'package:elective_course_management/Widgets/categories_card.dart';
import 'package:elective_course_management/Widgets/home_courses.dart';
import 'package:flutter/material.dart';
import '../../Widgets/backgrounfWrapper.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          title: const Text("Hello Aric!"),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search, color: Colors.black),
            ),
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Image.asset("assets/lnm.png", fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Categories", style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < categoriesUtilsList.length; i++)
                          CategoriesCard(
                            categoriesUtilsVar: categoriesUtilsList[i],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Vertical list of content
                  for (int i = 0; i < 5; i++)
                    HomeCourses(homeCoursesUtilsVar: homeCoursesUtilsList[i]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
