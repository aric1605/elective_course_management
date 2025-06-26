import 'package:elective_course_management/Constants/course_details.dart';
import 'package:flutter/material.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key, required this.courseDetailsVar});
  final courseDetail courseDetailsVar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Top Image
            Stack(
              children: [
                Image.asset(
                  'assets/course.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 40,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => {Navigator.pop(context)},
                  ),
                ),
              ],
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courseDetailsVar.courseName,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(courseDetailsVar.courseRating),
                        SizedBox(width: 10),
                        Text(courseDetailsVar.courseLearners),
                      ],
                    ),
                    const SizedBox(height: 16),

                    Text(
                      "Overview",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Icon(Icons.person_outline),
                        SizedBox(width: 10),
                        Text(courseDetailsVar.courseTeacher),
                      ],
                    ),
                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Icon(Icons.schedule_outlined),
                        SizedBox(width: 10),
                        Text(courseDetailsVar.courseHours),
                      ],
                    ),
                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Icon(Icons.signal_cellular_alt_rounded),
                        SizedBox(width: 10),
                        Text(courseDetailsVar.courseDifficulty),
                      ],
                    ),
                    const SizedBox(height: 24),

                    const Text(
                      "What will I learn ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "The Machine learning basics program is designed to offer a solid "
                      "foundation & work-ready skills for ML engineers. The Machine "
                      "learning basics program is designed to offer a solid foundation & "
                      "work-ready skills for ML engineers.",
                      style: TextStyle(height: 1.5),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Read More",
                      style: TextStyle(color: Colors.blue),
                    ),

                    const SizedBox(height: 24),

                    const Text(
                      "Ratings and Reviews",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Text(
                          "3.4",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Icon(Icons.star_border, size: 20),
                        Icon(Icons.star_border, size: 20),
                        SizedBox(width: 10),
                        Text("3 reviews"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Enroll Button
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Enroll",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
