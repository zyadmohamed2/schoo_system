import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';
import 'package:flutter_svg/svg.dart';
CustomAppBar(String title, void Function()? onPressed){
  return AppBar(
      title: Text(
        title,
        style: Styles.appBarTitle,
      ),
      centerTitle: true,
      leading: IconButton(
          onPressed: onPressed, icon: SvgPicture.asset(AssetsData.arrowBack)),
    );
}