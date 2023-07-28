import 'package:ed_tech/app_data.dart';
import 'package:ed_tech/constants.dart';
import 'package:ed_tech/widgets/appbar.dart';
import 'package:ed_tech/widgets/course_card.dart';
import 'package:flutter/material.dart';

class YourCoursesScreen extends StatelessWidget {
  static const String screenRoute = "/your-courses";

  const YourCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Your Courses"),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...currentUser.courses.map((e) => CourseCard(course: e)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
