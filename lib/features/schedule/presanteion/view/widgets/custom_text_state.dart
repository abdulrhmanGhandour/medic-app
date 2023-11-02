import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';

class CustomTextState extends StatelessWidget {
  const CustomTextState({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * .06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
