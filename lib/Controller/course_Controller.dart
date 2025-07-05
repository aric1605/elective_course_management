import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elective_course_management/Modals/course.dart';

import 'package:get/get.dart';

class CourseController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  RxList<Courses> courses = <Courses>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    courses.bindStream(_getCourseDetails());
  }

  // Stream<List<Courses>> _getCourseDetails() {
  //   return _firestore
  //       .collection('courses')
  //       .snapshots()
  //       .map((snapshot) {
  //         return snapshot.docs.map(doc){
  //           return Courses.fromMap(doc.data(), doc.courseName);
  //         }
  //   }).toList();
  // }

  Stream<List<Courses>> _getCourseDetails() {
    return _firestore.collection('courses').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Courses.fromMap(doc.data());
      }).toList();
    });
  }
}
