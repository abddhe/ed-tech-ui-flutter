import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ed_tech/constants.dart';
import 'package:ed_tech/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ed Tech App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: kWhiteColor,
        ),
        scaffoldBackgroundColor: kWhiteColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: kPrimaryColor,
          secondary: kSecondaryColor,
          error: kErrorColor,
        ),
        fontFamily: GoogleFonts.rubik().fontFamily,
        textTheme: GoogleFonts.rubikTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}

//
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("HI"),
        ),
      ),
    );
  }
}
