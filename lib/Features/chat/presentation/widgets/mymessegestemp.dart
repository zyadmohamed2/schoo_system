import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';

import '../../../../core/utils/styles.dart';

class mymessegestemp extends StatelessWidget {
  const mymessegestemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
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
                        image: AssetImage(AssetsData.mymessege),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, right: 25, left: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: media.width * .18,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '10:55',
                            ),
                            Image.asset(AssetsData.read_cheaker),
                            const SizedBox(
                              width: 7,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Today. 9:35 P.M',
          style: Styles.s2etailedtextstyle.copyWith(fontSize: 13),
        ),
      ],
    );
  }
}
