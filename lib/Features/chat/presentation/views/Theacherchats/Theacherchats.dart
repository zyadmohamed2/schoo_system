import 'package:flutter/material.dart';

import '../../widgets/ChatItem.dart';

class Theacherchats extends StatelessWidget {
  const Theacherchats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Messeges',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              weight: 15,
            ),
          ],
        ),
        ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const ChatItem(),
          itemCount: 7,
        )
      ],
    );
  }
}
