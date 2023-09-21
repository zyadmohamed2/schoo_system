import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';

import '../../../../core/utils/styles.dart';

class TeachreMessegetemp extends StatelessWidget {
  const TeachreMessegetemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: media.width * .8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mr Mohamed',
                style: Styles.s2etailedtextstyle,
              ),
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetsData.Teacher_messege),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 15, right: 15, left: 25, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet,',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '10:55',
                      )
                    ],
                  ),
                ),
              ),
              Text(
                'Today. 9:35 P.M',
                style: Styles.s2etailedtextstyle.copyWith(fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
