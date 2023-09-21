import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/profile/presentation/widget/custom_bottom_dialog.dart';
import 'package:schoolapp/Features/profile/presentation/widget/custom_textfield.dart';
import 'package:schoolapp/core/utils/app_router.dart';
import 'package:schoolapp/core/utils/styles.dart';

passwordDialog(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
          backgroundColor: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              padding: const EdgeInsets.all(15),
              height: height *0.39,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  const Text(
                    "To protect your information, please enter the password",
                    style: Styles.font16,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTextFeild(
                    title: "Enter password",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomBottomDialog(
                        text: "Enter",
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kpersonaldata);
                        },
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      CustomBottomDialog(
                        text: "Cancel",
                        cancel: true,
                        onTap: () {
                          context.pop();
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ));
    },
  );
}
