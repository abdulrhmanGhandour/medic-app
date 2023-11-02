import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';

class CustomRateingDoctor extends StatelessWidget {
  const CustomRateingDoctor({super.key, required this.rate});

  final String rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Text(
          rate,
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
