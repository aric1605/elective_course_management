import 'package:elective_course_management/Constants/categories_utils.dart';
import 'package:elective_course_management/Constants/colors.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.categoriesUtilsVar});
  final categoriesUtils categoriesUtilsVar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 155,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0.2,
              blurRadius: 3,
              offset: Offset(5, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoriesUtilsVar.courseName,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    categoriesUtilsVar.courseCount,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Icon(
                categoriesUtilsVar.courseIcon,
                size: 30,
                color: CustomColor.registerButtonBackground,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
