import 'package:ed_tech/constants.dart';
import 'package:ed_tech/pages/course_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String screenRoute = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _tabBarChildren = const [
    CoursePage(),
    Text("Profile"),
    Text("Setting"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: _tabBarChildren.length,
      child: Scaffold(
        body: SafeArea(
          child: TabBarView(
            children: _tabBarChildren,
          ),
        ),
        bottomSheet: Container(
          decoration: const BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: TabBar(
            indicatorColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: kDarkColor,
            labelColor: kPrimaryColor,
            tabs: const [
              Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.bookmark_add,
                    ),
                    Text(
                      'Courses',
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(Icons.person),
                    Text('Profile'),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(Icons.settings),
                    Text('Settings'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
