import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/core/utils/app_router.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';

void showdialog(
  BuildContext t,
) {
  var media = MediaQuery.of(t).size;

  showDialog(
    context: t,
    builder: (context) => AlertDialog(
      shape: UnderlineInputBorder(borderRadius: BorderRadius.circular(10)),
      content: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AssetsData.sucssesbooking),
            SizedBox(height: media.height*.04,),
            Text('Your request sent sucessfully',
                style: Styles.buttontextstyle.copyWith(color: Colors.black)),
            SizedBox(height: media.height*.01,),
            Text(
              'Teacher will review your request and get back to you shortly.'
              ' You can check your notifications for any updates.,style: Styles.boldstyle',textAlign: TextAlign.center,
              style: Styles.s2etailedtextstyle,
            )
          ],
        ),
      ),

      actions: [
        SizedBox(
            width: media.width*.9,
            height: media.height*.07,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                backgroundColor: kPrimaryColor
              ),
                onPressed: () => context.go('/'),
                child: Text('Go to home page',style: Styles.buttontextstyle,)))
      ],
    ),
  );
}
