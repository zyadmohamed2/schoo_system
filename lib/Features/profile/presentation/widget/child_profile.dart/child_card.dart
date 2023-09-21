import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/styles.dart';

class ChildCard extends StatefulWidget {
  ChildCard(
      {super.key,
      required this.name,
      required this.level,
      required this.clas,
      required this.image,
      required this.Radio});
  final String name;
  final String level;
  final String clas;
  final String image;
  String child = "girl";
  Widget Radio;
  @override
  State<ChildCard> createState() => _ChildCardState();
}

class _ChildCardState extends State<ChildCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      widget.image,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: Styles.font16,
                        ),
                        Text(
                          "Level: ${widget.level}",
                          style: Styles.childcard,
                        ),
                        Text(
                          "Class: ${widget.clas}",
                          style: Styles.childcard,
                        )
                      ],
                    )
                  ],
                ),
              ),
              widget.Radio
            ],
          ),
        ),
      ),
    );
  }
}
