import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Icon(Icons.calendar_month,color: Colors.black54,),
        ),
        Text(
          '12/12/2023',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
