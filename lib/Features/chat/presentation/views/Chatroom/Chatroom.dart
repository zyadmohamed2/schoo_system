import 'package:flutter/material.dart';
import 'package:schoolapp/Features/chat/presentation/views/Chatroom/chatroombar.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../MessagesList/Messageslist.dart';

class Chatroom extends StatelessWidget {
  const Chatroom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: media.height * .04,
          ),
          const Chatroombar(),
          const MessagesList(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: media.width * .9,
              height: media.height * .08,
              decoration: BoxDecoration(
                  color: kaccentcolor, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(AssetsData.Attachment_chat),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Write a message to Mr Ahmed',
                          hintStyle: Styles.s2etailedtextstyle.copyWith(fontSize: 15),
                          border: const UnderlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  Container(
                    height: media.height * .065,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kPrimaryColor),
                    child: Image.asset(
                      AssetsData.send_messege,
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
