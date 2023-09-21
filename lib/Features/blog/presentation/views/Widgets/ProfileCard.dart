import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Container(
        height: 100,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 209, 208, 208),
              blurRadius: 25,
              spreadRadius: 1,
              offset: Offset(10, 8)),
        ]),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  AssetsData.LatestNewimage,
                  height: size.height * .9,
                  width: size.width * .2,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16, left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Science day',
                          style: Styles.maintextstyle
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                       SizedBox(width: size.width*.4,),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_outline)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 5),
                    child: Text(
                      'CDC is not response federal or private website.',
                      style:
                          Styles.detailedtextstyle.copyWith(color: Colors.grey),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
