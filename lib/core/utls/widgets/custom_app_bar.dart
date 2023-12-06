import 'package:flutter/material.dart';

import 'package:medicapp/core/utls/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(  {super.key, required this.image, required this.text});

  final String image;
  final String text;
 //final bool isEmpity; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
           Text(
            text,
            style: Styles.textStyle35,
          ),
          const Spacer(),
          CircleAvatar(
            radius: 25,
            backgroundImage:   AssetImage(image),
          ),
        ],
      ),
    );
  }
}
