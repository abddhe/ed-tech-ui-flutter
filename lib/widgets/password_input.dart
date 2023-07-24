import 'package:ed_tech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  IconData passwordIcon = CupertinoIcons.eye;
  bool passwordTextStatus = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: passwordTextStatus,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            if (passwordTextStatus) {
              setState(() {
                passwordIcon = CupertinoIcons.eye_slash;
              });
            } else {
              setState(() {
                passwordIcon = CupertinoIcons.eye;
              });
            }
            passwordTextStatus = !passwordTextStatus;
          },
          child: Icon(
            passwordIcon,
            size: 30.0,
          ),
        ),
        hintText: "Password",
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kDarkColor, width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
