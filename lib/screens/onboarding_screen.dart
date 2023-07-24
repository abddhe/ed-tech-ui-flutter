import 'package:ed_tech/constants.dart';
import 'package:ed_tech/screens/login_screen.dart';
import 'package:ed_tech/widgets/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String screenRoute = "/onBoarding";

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int lastPageIndex = 3;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroPage(
                image: "assets/images/intro-1.png",
                title: "Learn anytime and anywhere",
                body:
                    "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
                onPressed: () {
                  _controller.jumpToPage(1);
                },
                skip: () {
                  _controller.jumpToPage(lastPageIndex-1);
                },
              ),
              IntroPage(
                image: "assets/images/intro-2.png",
                title: "Find a course for you",
                body:
                    "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
                onPressed: () {
                  _controller.jumpToPage(2);
                },
                skip: () {
                  _controller.jumpToPage(lastPageIndex-1);
                },
              ),
              IntroPage(
                image: "assets/images/intro-3.png",
                title: "Improve your skills",
                body:
                    "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(LoginScreen.screenRoute);
                },
                isLast: true,
              ),
            ],
          ),
          Positioned(
            bottom: 150,
            child: SmoothPageIndicator(
              onDotClicked: (index) {
                _controller.jumpToPage(index);
              },
              effect: ExpandingDotsEffect(
                spacing: 8,
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Theme.of(context).colorScheme.secondary,
              ),
              controller: _controller,
              count: lastPageIndex,
            ),
          ),
        ],
      ),
    );
  }
}
