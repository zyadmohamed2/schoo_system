import 'package:flutter/material.dart';
import 'package:schoolapp/Features/chat/presentation/widgets/Teachercontainer.dart';

class OnlineList extends StatelessWidget {
  const OnlineList({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SizedBox(
      height: media.height * .22,
      child: ListView.builder(
        itemBuilder: (context, index) => const Teachercontainer(),
        itemCount: 100,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
