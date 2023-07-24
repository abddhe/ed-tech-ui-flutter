import 'dart:async';

import 'package:ed_tech/constants.dart';
import 'package:ed_tech/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> MainScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/splash.png",
          ),
          Text(
            "CodeFactory",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: kDarkColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1,
                ),
          ),
        ],
      ),
    );
  }
}
