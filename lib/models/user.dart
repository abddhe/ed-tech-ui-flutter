import 'package:ed_tech/models/course.dart';

class User {
  final String name;
  final String email;
  final List<Course> course;

  const User({
    required this.name,
    required this.email,
    required this.course,
  });
}
