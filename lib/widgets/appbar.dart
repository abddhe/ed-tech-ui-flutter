import 'package:ed_tech/constants.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onPressed;

  const AppBarWidget({
    Key? key,
    this.title = "",
    this.onPressed,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 75,
      toolbarHeight: 75,
      leading: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: GestureDetector(
          onTap: onPressed ?? () => Navigator.of(context).pop(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20.0,
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: kDarkColor,
              fontWeight: FontWeight.bold,
            ),
      ),
      centerTitle: true,
    );
  }
}
