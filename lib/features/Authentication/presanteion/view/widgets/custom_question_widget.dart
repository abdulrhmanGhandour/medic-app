import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';

class CustomQuestionWidget extends StatelessWidget {
  const CustomQuestionWidget(
      {super.key,
      required this.text,
      required this.text2,
       this.onPressed});

  final String text;
  final String text2;
  final Function()? onPressed;

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
              color: ColorData.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
