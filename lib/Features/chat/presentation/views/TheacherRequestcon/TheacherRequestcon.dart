import 'package:flutter/material.dart';

import '../../widgets/Teachercontainer.dart';

class TheacherRequestcon extends StatelessWidget {
  const TheacherRequestcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SizedBox(
      height: media.height * .21,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.only(top: 15),
            width: media.width * .27,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1, color: Colors.grey)),
            child: const Teachercontainer()),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
