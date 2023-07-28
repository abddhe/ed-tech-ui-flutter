import 'package:ed_tech/constants.dart';
import 'package:ed_tech/screens/login_screen.dart';
import 'package:ed_tech/widgets/appbar.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const AppBarWidget( title: "Settings",),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: kLightGreyColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 5.0,
                  ),
                ),
                child: Image.asset(
                  'assets/images/defualt-user.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding + 10,
              ),
              SettingsPageContainer(text: "Your Courses", onPressed: () {}),
              SettingsPageContainer(text: "Saved", onPressed: () {}),
              SettingsPageContainer(text: "Payment", onPressed: () {}),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginScreen.screenRoute);
                  },
                  child: Text(
                    'Logout',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: kDarkGreyColor,
                        ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsPageContainer extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const SettingsPageContainer({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.only(bottom: kDefaultPadding),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          border: Border.all(
            color: kGreyColor,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          "Your Courses",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: kDarkColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
