import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/profile/presentation/widget/appBar.dart';
import 'package:schoolapp/core/utils/app_router.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("About Us", () {
        GoRouter.of(context).push(AppRouter.ksetting);
      }),
      body: Container(
        margin: const EdgeInsets.only(top: 30, left: 10),
        padding: const EdgeInsets.all(10),
        child: const Text(
          "Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. Etiam eu turpis molestie, \n dictum est a, mattis tellus. Sed dignissim, \n metus nec fringilla accumsan, risus sem \n sollicitudin lacus, ut interdum tellus elit sed \n risus. Maecenas eget condimentum velit, sit \n amet feugiat lectus. Class aptent taciti \n sociosqu ad litora torquent per conubia \n nostra, per inceptos himenaeos. Praesent \n auctor purus luctus enim egestas, ac \n scelerisque ante pulvinar.",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
