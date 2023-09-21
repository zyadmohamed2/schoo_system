import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';

class Teachercontainer extends StatelessWidget {
  const Teachercontainer({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width * .23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(maxRadius: 35, child: Image.asset(AssetsData.avatar)),
          const SizedBox(
            height: 2.5,
          ),
          const Text(
            'MR Mohamed',
            style: Styles.fontname,
          ),
          const Text(
            'English',
            style: Styles.detailedtextstyle,
          )
        ],
      ),
    );
  }
}
