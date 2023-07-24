import 'package:ed_tech/constants.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Hello,",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: kGreyColor,
                      ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: kGreyColor,
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: kDarkColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
