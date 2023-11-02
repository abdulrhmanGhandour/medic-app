import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';

class AppoinmentStatusWidget extends StatelessWidget {
  const AppoinmentStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
        ),
        Text(
          'Confirmed',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
