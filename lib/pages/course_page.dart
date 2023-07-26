import "package:ed_tech/app_data.dart";
import "package:ed_tech/constants.dart";
import "package:ed_tech/widgets/badge_widget.dart";
import "package:ed_tech/widgets/course_card.dart";
import "package:ed_tech/widgets/search_input.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0.0),
                title: Text(
                  "Hello,",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: kDarkColor,
                      ),
                ),
                subtitle: Text(
                  "Abdullah Dheir",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: kDarkColor,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                trailing: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: kGreyColor,
                    ),
                  ),
                  child: const Icon(
                    CupertinoIcons.bell,
                    color: kDarkColor,
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Column(
                children: [
                  SearchInput(
                    text: "Search course",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Row(
                    children: [
                      Text(
                        "Category:",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontSize: 17.0,
                            ),
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BadgeWidget(text: "#CSS"),
                              BadgeWidget(text: "#UX"),
                              BadgeWidget(text: "#Swift"),
                              BadgeWidget(text: "#UI"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      CourseCard(course: coursesList[index]),
                  itemCount: coursesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
