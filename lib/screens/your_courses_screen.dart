import 'package:ed_tech/constants.dart';
import 'package:flutter/material.dart';

class YourCoursesScreen extends StatelessWidget {
  static const String screenRoute = "/your-courses";
  const YourCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),

        ),
      ),
    );
  }
}
