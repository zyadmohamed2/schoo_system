import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class Chatroombar extends StatelessWidget {
  const Chatroombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(color: Colors.grey, width: .5))),
      child: Row(children: <Widget>[
        const SizedBox(
          width: 10,
        ),
         InkWell(
             onTap: () => context.pop(),
             child: Icon(Icons.arrow_back_ios_new)),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
            height: media.height * .1,
            child: CircleAvatar(
                maxRadius: 27, child: Image.asset(AssetsData.avatar))),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mr Mohamed',
              style: Styles.boldstyle.copyWith(fontSize: 16),
            ),
            Row(
              children: [
                const Icon(
                  Icons.brightness_1,
                  color: Colors.red,
                  size: 12,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Busy now',
                  style: Styles.s2etailedtextstyle
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            )
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        InkWell(
          onTap: () => context.go(AppRouter.kRequstpage),
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            height: media.height * .065,
            width: media.width * .3,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                Text(
                  'Request',
                  style: Styles.fontname
                      .copyWith(color: Colors.white, fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
