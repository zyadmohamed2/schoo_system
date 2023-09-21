import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/profile/presentation/widget/appBar.dart';
import 'package:schoolapp/Features/profile/presentation/widget/choices.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/core/utils/app_router.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  String language = "English";
  bool swith = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        "Setting",
        () {
          GoRouter.of(context).pop();
        },
      ),
      body: Container(
        child: Column(
          children: [
            ExpansionTile(
              childrenPadding: const EdgeInsets.symmetric(horizontal: 15),
              title: Row(
                children: [
                  SvgPicture.asset(AssetsData.language),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Language",
                        style: Styles.font16,
                      ),
                      Text(
                        language,
                        style: const TextStyle(fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "English",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          activeColor: kPrimaryColor,
                          value: "English",
                          groupValue: language,
                          onChanged: (value) {
                            setState(() {
                              language = value!;
                            });
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Arabic",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          activeColor: kPrimaryColor,
                          value: "Arabic",
                          groupValue: language,
                          onChanged: (value) {
                            setState(() {
                              language = value!;
                            });
                          },
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AssetsData.notifications),
                      const Text(
                        "Notifications",
                        style: Styles.font16,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Switch(
                    value: swith,
                    onChanged: (value) {
                      setState(() {
                        swith = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Choices(
                icon: AssetsData.about,
                title: "About Us",
                onTap: () {
                  GoRouter.of(context).go(AppRouter.kAboutUs);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
