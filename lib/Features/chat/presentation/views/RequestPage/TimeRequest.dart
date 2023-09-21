import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class TimeRequest extends StatefulWidget {
  const TimeRequest({Key? key}) : super(key: key);

  @override
  State<TimeRequest> createState() => _TimeRequestState();
}

class _TimeRequestState extends State<TimeRequest> {
  int selcteditem = 0;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * .17,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(

            onTap: () {
              setState(() {
                selcteditem = index;
              });
            },
            child: Container(
              height: media.height * .4,
              decoration: BoxDecoration(
                  color: selcteditem == index ? kPrimaryColor : kaccentcolor,
                  borderRadius: BorderRadius.circular(3)),
              child: Center(child: Text('11:00AM')),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: media.width * .25,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 37),
        itemCount: 6,
      ),
    );
  }
}
