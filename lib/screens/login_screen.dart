import 'package:ed_tech/constants.dart';
import 'package:ed_tech/screens/home_screen.dart';
import 'package:ed_tech/screens/signup_screen.dart';
import 'package:ed_tech/widgets/password_input.dart';
import 'package:ed_tech/widgets/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  static const String screenRoute = "/login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  width: double.infinity,
                  child: Text(
                    "Log in",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: kDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "Login with social networks",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: kDarkGreyColor,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(
                            Icons.facebook_rounded,
                            color: kWhiteColor,
                            size: 30.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.instagram,
                            color: kWhiteColor,
                            size: 30.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.googlePlus,
                            color: kWhiteColor,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: kDarkColor, width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const PasswordInput(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    width: double.infinity,
                    child: Text(
                      "Forget Password?",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: kDarkGreyColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                PrimaryButton(
                    title: "Log in",
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.screenRoute);
                    }),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(SignupScreen.screenRoute);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    width: double.infinity,
                    child: Text(
                      "Sign up",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: kDarkGreyColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
