import 'package:ed_tech/constants.dart';
import 'package:ed_tech/models/course.dart';
import 'package:ed_tech/widgets/appbar.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: course.title,
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: SafeArea(child:
        Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
              ],
            ),
          ),
        ),),
    );
  }
}
