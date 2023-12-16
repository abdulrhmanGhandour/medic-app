import 'package:flutter/material.dart';
import 'package:medicapp/features/doctor%20schedule/presanteion/view/widgets/doctor_schedule_view_body.dart';

class DoctorScheduleView extends StatelessWidget {
  const DoctorScheduleView ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DoctorScheduleViewBody(),
      ),
    );
  }
}