import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class BuildDot extends StatelessWidget {
  const BuildDot({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.context,
  });

  final int currentIndex;
  final int index;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 10,
                width: currentIndex == index ? 10 : 10,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: currentIndex == index ?kPrimaryColor:Kindicatorcolor,
                ),
              );
  }
}