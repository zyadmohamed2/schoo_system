import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schoolapp/core/utils/styles.dart';

class Edit extends StatelessWidget {
  const Edit(
      {super.key,
      required this.icon,
      required this.title,
      this.onTap,
      required this.controller, this.obscureText = false});
  final String icon;
  final String title;
  final Function()? onTap;
  final bool obscureText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    icon,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    title,
                    style: Styles.Personallabal,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: const Text(
                "Edit",
                style: Styles.textEdit,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          child: TextField(
            obscureText: obscureText,
            maxLines: obscureText? 1: null,
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}
