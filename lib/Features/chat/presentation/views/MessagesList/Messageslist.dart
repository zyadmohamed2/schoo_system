import 'package:flutter/material.dart';
import 'package:schoolapp/Features/chat/presentation/widgets/TeachreMessegetemp.dart';

import '../../widgets/mymessegestemp.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: media.height * .72,
      child: ListView(
        reverse: true,
        children: const [
          mymessegestemp(),
          SizedBox(
            height: 15,
          ),
          TeachreMessegetemp()
        ],
      ),
    );
  }
}
