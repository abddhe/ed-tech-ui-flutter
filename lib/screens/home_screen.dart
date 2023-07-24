import 'package:ed_tech/app_data.dart';
import 'package:ed_tech/constants.dart';
import 'package:ed_tech/widgets/badge_widget.dart';
import 'package:ed_tech/widgets/course_card.dart';
import 'package:ed_tech/widgets/search_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String screenRoute = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: ListTile(
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
            ),
            Container(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: Column(
                children: [
                  SearchInput(
                    text: "Search course",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 15.0,
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
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                itemBuilder: (context, index) =>
                    CourseCard(course: coursesList[index]),
                itemCount: coursesList.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: kWhiteColor,

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add), label: "Course"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),

      ),
    );
  }
}
