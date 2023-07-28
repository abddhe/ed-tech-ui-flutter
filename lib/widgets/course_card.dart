import 'package:ed_tech/constants.dart';
import 'package:ed_tech/models/course.dart';
import 'package:ed_tech/widgets/badge_widget.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  final VoidCallback? onPressed;
  const CourseCard({super.key, required this.course, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const  BorderSide(
            width: 2.0,
            color: kGreyColor,
          ),
        ),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: kErrorColor.withAlpha(5),
                  width: double.infinity,
                  height: 250.0,
                  child: Image.asset(
                    "assets/images/UI.png",
                  ),
                ),
                 const Positioned(
                  bottom: 20,
                  right: 20,
                  child: BadgeWidget(
                    text: "\$ 50",
                  ),
                ),
              ],
            ),
            Container(
              color: kWhiteColor,
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "3 h 30 min",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                      color: kSuccessColor,
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    "UI",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(
                      color: kDarkColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    "Advanced mobile Interface design",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                      color: kDarkColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
