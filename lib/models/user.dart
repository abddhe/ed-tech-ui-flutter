import 'package:ed_tech/models/course.dart';

class User {
  final String name;
  final String email;
  final List<Course> courses;

  const User({
    required this.name,
    required this.email,
    required this.courses,
  });
}
