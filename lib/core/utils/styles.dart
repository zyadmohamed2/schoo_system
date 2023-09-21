import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

abstract class Styles {
  static const maintextstyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const detailedtextstyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  //===amr
  static const fontname = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const s2etailedtextstyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.w400, color: kdetailedtextcolor);
  static const boldstyle = TextStyle(
      fontSize: 23, fontWeight: FontWeight.bold, color: CupertinoColors.black);
//===
  static const buttontextstyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Color(0xFFFFFFFF),
  );

//=======
  static const font16 = TextStyle(
    color: Color(0xFF181C26),
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 1.38,
  );
  static const fontBottomDialog = TextStyle(
    color: Color(0xFFF3F3F3),
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 1.22,
  );
  static const appBarTitle = TextStyle(
    color: Color(0xFF181D26),
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 1.22,
  );
  static const Personallabal = TextStyle(
    color: Color(0xFF070D18),
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 1.38,
  );
  static const textEdit = TextStyle(
    color: Color(0xFF1246AC),
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.50,
    letterSpacing: -0.31,
  );
  static var childcard =
      TextStyle(fontWeight: FontWeight.w400, color: Colors.grey[700]);
}
