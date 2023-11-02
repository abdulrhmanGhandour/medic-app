import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            Icons.access_time_filled,
            color: Colors.black54,
          ),
        ),
        Text(
          '10:30 AM',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
