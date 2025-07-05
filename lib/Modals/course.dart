class Courses {
  final String courseName;
  final String courseRating;
  final String courseLearners;
  final String courseIcon;
  final String courseTeacher;
  final String courseHours;
  final String courseDifficulty;
  Courses({
    required this.courseName,
    required this.courseRating,
    required this.courseLearners,
    required this.courseIcon,
    required this.courseTeacher,
    required this.courseHours,
    required this.courseDifficulty,
  });

  factory Courses.fromMap(Map<String, dynamic> map) {
    return Courses(
      courseName: map['courseName'] ?? '',
      courseDifficulty: map['courseDifficulty'] ?? '',
      courseTeacher: map['courseTeacher'] ?? '',
      courseHours: map['courseHours']?.toString() ?? '',
      courseLearners: map['courseLearners']?.toString() ?? '',
      courseRating: map['courseRating']?.toString() ?? '',
      courseIcon: map['courseIcon'] ?? '',
    );
  }
}
