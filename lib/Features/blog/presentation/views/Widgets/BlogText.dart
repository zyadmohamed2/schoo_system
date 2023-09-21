import 'package:flutter/material.dart';

import 'BoxShadow.dart';

class BlogTextField extends StatelessWidget {
  const BlogTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 15),
              child: boxShadow()
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15),
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.all(Radius.circular(6),),
                  ),
                  height: 57,
                  width: width * .16,
                  child: IconButton(onPressed: () {}, icon:const Icon(Icons.bookmark_outline))),
            )
          ],
        );
  }
}