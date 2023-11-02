import 'package:flutter/material.dart';

import 'package:medicapp/core/utls/styles.dart';

class AppoinmentAction extends StatelessWidget {
  const AppoinmentAction(
      {super.key,
      required this.text,
      required this.textColor,
      required this.color});

  final String text;
  final Color textColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * .36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              text,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
