import 'package:ed_tech/app_data.dart';
import 'package:ed_tech/constants.dart';
import 'package:ed_tech/screens/login_screen.dart';
import 'package:ed_tech/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsIsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: "Settings",
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          height: MediaQuery.of(context).size.height - 200,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/settings.png',
                  width: double.infinity,
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                SwitchListTile(
                  contentPadding: const EdgeInsets.all(kDefaultPadding),
                  secondary: Container(
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      CupertinoIcons.bell_fill,
                      color: kWhiteColor,
                      size: 20.0,
                    ),
                  ),
                  title: Text(
                    "Notifications",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                          letterSpacing: .1,
                          color: kDarkColor,
                        ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(color: kGreyColor, width: 1),
                  ),
                  value: notificationsIsEnabled,
                  activeColor: kSuccessColor,

                  onChanged: (bool value) {
                    setState(() {
                      notificationsIsEnabled = value;
                    });
                  },
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  width: double.infinity,
                  child: Text(
                    "Account Information",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: kDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                SettingsPageContainer(
                  title: "Name",
                  icon: Icons.person_2,
                  subTitle: currentUser.name,
                  onPressed: () {},
                ),
                SettingsPageContainer(
                  title: "Email",
                  icon: Icons.mail,
                  subTitle: currentUser.email,
                  onPressed: () {},
                ),
                SettingsPageContainer(
                  title: "Password",
                  icon: Icons.lock,
                  subTitle: "Changed 2 weeks ago",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsPageContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final VoidCallback? onPressed;

  const SettingsPageContainer(
      {super.key,
      this.onPressed,
      required this.title,
      required this.icon,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding - 5,
        ),
        leading: Container(
          alignment: Alignment.center,
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: kWhiteColor,
            size: 20.0,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: kGreyColor,
                fontWeight: FontWeight.w600,
              ),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 21.0,
                letterSpacing: .1,
                color: kDarkColor,
              ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(color: kGreyColor, width: 1),
        ),
        trailing: GestureDetector(
          onTap: onPressed,
          child: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: kGreyColor,
          ),
        ),
      ),
    );
  }
}
