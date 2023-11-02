import 'package:flutter/material.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/schedule_view_body.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:  SingleChildScrollView(
          child: Column(
            children: [
              ScheduleViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}