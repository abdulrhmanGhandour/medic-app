import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/widgets/appoinment_status_widget.dart';
import 'package:medicapp/core/utls/widgets/date_widget.dart';
import 'package:medicapp/core/utls/widgets/time_widget.dart';

class DateTimeStateWidget extends StatelessWidget {
  const DateTimeStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DateWidget(),
        SizedBox(
          width: 16,
        ),
        TimeWidget(),
        SizedBox(
          width: 16,
        ),
        AppoinmentStatusWidget(),
      ],
    );
  }
}
