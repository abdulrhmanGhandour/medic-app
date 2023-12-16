import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';

class CustomDetailsText extends StatelessWidget {
  const CustomDetailsText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
       text,
        style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
