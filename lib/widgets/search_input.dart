import 'package:ed_tech/constants.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final String text;
  const SearchInput({super.key, required this.text,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: GestureDetector(

          child: const Icon(
            Icons.search,
            size: 30.0,
          ),
        ),
        hintText: text,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kDarkColor, width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
