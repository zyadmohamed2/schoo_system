import 'package:flutter/material.dart';

class boxShadow extends StatelessWidget {
  const boxShadow({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
                width: width * .75,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:const BorderSide(
                            color: Color(0xffEFEFEF),
                          ),
                          borderRadius: BorderRadius.circular(6)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffEFEFEF)),
                          borderRadius: BorderRadius.circular(6)),
                      filled: true,
                      fillColor:const Color(0xffEFEFEF),
                      hintText: 'Search for Classes , Events',
                      prefixIcon:const Icon(Icons.search)),
                ),
              );
  }
}