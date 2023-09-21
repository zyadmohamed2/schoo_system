import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/styles.dart';

import '../../../../../constants.dart';

class CustomTextFormField extends StatelessWidget {
  
 
  final String hint;
    final IconButton icon;
 TextEditingController? controller;
  
  CustomTextFormField({ Key? key,  required this.hint, required this.controller, required this.icon }): super(key: key);
 // const GeneralCustomButton({ Key? key, this.text, this.onTap, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   
    return TextFormField(
      controller:controller  ,  
            
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: Styles.detailedtextstyle,
          suffixIcon:icon ,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                  color: Ktextfieldcolor
              )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
                color: Ktextfieldcolor
    
            ),
    
           )
      ),
    );
  }
}