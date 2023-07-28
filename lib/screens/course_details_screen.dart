import 'package:ed_tech/constants.dart';
import 'package:ed_tech/models/course.dart';
import 'package:ed_tech/widgets/appbar.dart';
import 'package:ed_tech/widgets/badge_widget.dart';
import 'package:ed_tech/widgets/primaryButton.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  static const String screenRoute = '/course-details';

  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Course course = ModalRoute.of(context)?.settings.arguments as Course;

    return Scaffold(
      appBar: AppBarWidget(
        title: course.title,
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  course.imageURL,
                  width: double.infinity,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  alignment: AlignmentDirectional.centerEnd,
                  width: double.infinity,
                  child: const BadgeWidget(
                    text: "\$ 50",
                  ),
                ),
                Text(
                  "About the course",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: kDarkColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  course.description,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: kDarkColor,
                        height: 1.5,
                      ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  "Duration",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: kDarkColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  course.duration,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: kDarkColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: kWhiteColor,
        height: 100,
        padding: const EdgeInsets.all(kDefaultPadding + 5),
        width: double.infinity,
        child: PrimaryButton(
          title: "Add to cart",
          onPressed: () {},
        ),
      ),
    );
  }
}
