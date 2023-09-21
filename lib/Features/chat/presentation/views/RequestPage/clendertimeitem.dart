import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class ClenderTimeItem extends StatelessWidget {
  const ClenderTimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarTimeline(
      shrink: true,
      initialDate: DateTime(2020, 4, 20),
      firstDate: DateTime(2019, 1, 15),
      lastDate: DateTime(2020, 11, 20),
      onDateSelected: (date) => print(date),
      leftMargin: 15,
      monthColor: kdetailedtextcolor,
      dayColor: kdeactivatedtextcolor,
      activeDayColor: kdeactivatedtextcolor,
      activeBackgroundDayColor: kPrimaryColor,
      dotsColor: kPrimaryColor,
      selectableDayPredicate: (date) => date.day != 23,
      locale: 'en_ISO',
    );
  }
}
