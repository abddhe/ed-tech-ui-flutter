import 'package:ed_tech/constants.dart';
import 'package:ed_tech/pages/course_page.dart';
import 'package:ed_tech/pages/profile_page.dart';
import 'package:ed_tech/pages/settings_page.dart';
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
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        initialIndex: 0,
        length: _tabBarChildren.length,
        child: Stack(
          alignment: Alignment.center,
          children: [
            TabBarView(
              children: _tabBarChildren,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  border: Border(
                    top: BorderSide(color: kGreyColor, width: 1),
                    left: BorderSide(color: kGreyColor, width: 1),
                    right: BorderSide(color: kGreyColor, width: 1),
                    bottom: BorderSide(color: kGreyColor, width: 0),
                  ),
                ),
                child: TabBar(
                 labelPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  indicatorColor: Theme.of(context).colorScheme.primary,
                  unselectedLabelColor: kGreyColor,
                  labelColor: kPrimaryColor,
                  tabs: const [
                    Tab(
                      child: Column(
                        children: [
                          Icon(
                            Icons.bookmark_add,
                          ),
                          SizedBox(height: 5.0,),
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
                          SizedBox(height: 5.0,),
                          Text('Profile'),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(height: 5.0,),
                          Text('Settings'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
