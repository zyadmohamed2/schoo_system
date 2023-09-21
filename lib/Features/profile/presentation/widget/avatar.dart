import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        children: [
          Container(
              decoration: const BoxDecoration(),
              child: Image.asset(AssetsData.avatar)),
          const Text(
            "Ali Youssef",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 23),
          ),
          Text(
            "Parent : Layla & lsraa",
            style: TextStyle(color: Colors.grey[600], fontSize: 17),
          ),
        ],
      ),
    );
  }
}