import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/core/utils/app_router.dart';
import 'package:schoolapp/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../../widgets/SucssesBookingdialog.dart';
import '../TheacherRequestcon/TheacherRequestcon.dart';
import 'TimeRequest.dart';
import 'clendertimeitem.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Request a conversation',
          style: Styles.boldstyle,
        ),
        centerTitle: true,
        leading:  InkWell(
            onTap: () => context.pop(),
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: media.height * .001,
              ),
              const Text(
                'Teacher',
                style: Styles.boldstyle,
              ),
              Text('Choose teacher you want to talk with',
                  style: Styles.s2etailedtextstyle.copyWith(fontSize: 17)),
              SizedBox(
                height: media.height * .01,
              ),
              const TheacherRequestcon(),
              SizedBox(
                height: media.height * .01,
              ),
              const Text(
                'Dates',
                style: Styles.boldstyle,
              ),
              Text('Choose from available dates',
                  style: Styles.s2etailedtextstyle.copyWith(fontSize: 17)),
              SizedBox(
                height: media.height * .001,
              ),
              const ClenderTimeItem(),
              const Text(
                'Time',
                style: Styles.boldstyle,
              ),
              Text('Choose from available Time',
                  style: Styles.s2etailedtextstyle.copyWith(fontSize: 15)),
              SizedBox(
                height: media.height * .02,
              ),
              TimeRequest(),  SizedBox(
                height: media.height * .12,
              ),

            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: media.width * .9,
        height: media.height * .07,
        child: ElevatedButton(
          onPressed: () => showdialog(context),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              backgroundColor: kPrimaryColor,
              maximumSize: Size.fromWidth(media.width * 4)),
          child: Text('Book Your Meeting',
              style:
                  Styles.boldstyle.copyWith(fontSize: 20, color: Colors.white)),
        ),
      ),
    );
  }
}
