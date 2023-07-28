import 'package:ed_tech/app_data.dart';
import 'package:ed_tech/constants.dart';
import 'package:ed_tech/screens/course_details_screen.dart';
import 'package:ed_tech/screens/home_screen.dart';
import 'package:ed_tech/screens/login_screen.dart';
import 'package:ed_tech/screens/onboarding_screen.dart';
import 'package:ed_tech/screens/signup_screen.dart';
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
      initialRoute: currentUser != null
          ? HomeScreen.screenRoute
          : SplashScreen.screenRoute,
      routes: {
        SplashScreen.screenRoute: (context) => const SplashScreen(),
        OnBoardingScreen.screenRoute: (context) => const OnBoardingScreen(),
        LoginScreen.screenRoute: (context) => const LoginScreen(),
        SignupScreen.screenRoute: (context) => const SignupScreen(),
        HomeScreen.screenRoute: (context) => const HomeScreen(),
        CourseDetailsScreen.screenRoute: (context) =>
            const CourseDetailsScreen(),
      },
    );
  }
}
