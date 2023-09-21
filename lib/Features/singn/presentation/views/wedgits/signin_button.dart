import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class SiginButton extends StatefulWidget {
  // const LoginButton({
  //   super.key,
  // });
final String hint;
void Function()? onPressed;
  SiginButton({ Key? key,  required this.hint, required this.onPressed, }): super(key: key);

  @override
  State<SiginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<SiginButton> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: MaterialButton(onPressed: widget.onPressed,
      child: Text(widget.hint,
      style: Styles.buttontextstyle,
      ),
      ),
    );
  }
}
