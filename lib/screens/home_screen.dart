import 'package:ed_tech/constants.dart';
import 'package:ed_tech/widgets/badge_widget.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                              BadgeWidget(text: "#css"),
                              BadgeWidget(text: "#css"),
                              BadgeWidget(text: "#css"),
                              BadgeWidget(text: "#css"),
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
          ],
        ),
      ),
    );
  }
}
