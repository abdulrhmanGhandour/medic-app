import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';

class SymptomsItem extends StatelessWidget {
  const SymptomsItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [boxShadow()],
            color: Colors.white38),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              text,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
