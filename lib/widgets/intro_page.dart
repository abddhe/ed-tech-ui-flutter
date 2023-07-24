import 'package:ed_tech/constants.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  final String image;
  final String title;
  final String body;
  final VoidCallback onPressed;
  final VoidCallback? skip;
  final bool isLast;

  const IntroPage({
    super.key,
    required this.image,
    required this.title,
    required this.body,
    required this.onPressed,
    this.skip,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      color: kWhiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: skip,
            child: isLast
                ? const SizedBox( width: double.infinity,
            height: 15.0,)
                : SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kDarkGreyColor,
                          ),
                      textAlign: TextAlign.end,
                    ),
                  ),
          ),
          Column(
            children: [
              Image.asset(
                image,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                width: 230,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: kDarkColor,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  body,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: kDarkGreyColor,
                      ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: onPressed,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  isLast? "Let's Start" :"Next",
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: kWhiteColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
