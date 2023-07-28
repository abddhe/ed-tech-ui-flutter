import 'package:ed_tech/constants.dart';
import 'package:ed_tech/widgets/appbar.dart';
import 'package:ed_tech/widgets/password_input.dart';
import 'package:ed_tech/widgets/primaryButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static const String screenRoute = "/signup";

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  IconData passwordIcon = CupertinoIcons.eye;
  bool passwordTextStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/signup.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  width: double.infinity,
                  child: Text(
                    "Sign up",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: kDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "Create your account",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: kDarkGreyColor,
                      ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: kDarkColor, width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
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
                const SizedBox(
                  height: 15.0,
                ),
                PrimaryButton(title: "Sign up", onPressed: () {}),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    width: double.infinity,
                    child: Text(
                      "Log in",
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
