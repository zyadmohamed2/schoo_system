import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/profile/presentation/function/password_dialog.dart';
import 'package:schoolapp/Features/profile/presentation/widget/avatar.dart';
import 'package:schoolapp/Features/profile/presentation/widget/choices.dart';
import 'package:schoolapp/core/utils/app_router.dart';
import 'package:schoolapp/core/utils/assets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Avatar(),
          SizedBox(
            height: height / 10,
          ),
          Choices(
            icon: AssetsData.childProfile,
            title: "Child Profile",
            onTap: () {
              GoRouter.of(context).push(AppRouter.kChildProfile);
            },
          ),
          Choices(
            icon: AssetsData.personalData,
            title: "Personal Data",
            onTap: () {
              passwordDialog(context);
            },
          ),
          Choices(
            icon: AssetsData.setting,
            title: "Setting",
            onTap: () {
              GoRouter.of(context).push(AppRouter.ksetting);
            },
          ),
          const Choices(icon: AssetsData.contact, title: "Contact Us"),
          const Choices(icon: AssetsData.logout, title: "Log out"),
        ],
      ),
    ));
  }
}
