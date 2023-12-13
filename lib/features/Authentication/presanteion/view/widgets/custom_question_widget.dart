import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';

class CustomQuestionWidget extends StatelessWidget {
  const CustomQuestionWidget({
    super.key,
    required this.text,
    required this.text2,
    this.onPressed,
    this.textColor = ColorData.kPrimaryColor,
  });

  final String text;
  final String text2;
  final Function()? onPressed;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: Styles.textStyle16.copyWith(
              color: textColor,
            ),
          ),
        ),
      ],
    );
  }
}
