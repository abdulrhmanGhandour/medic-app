import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/widgets/custom_app_bar.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/about_doctor_section.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/appoinment_state_bar.dart';

class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(image: AssetsData.kDoctor1Image, text: 'Schedule'),
        AppoinmentStateBar(),
        SizedBox(
          height: 30,
        ),
        AboutDoctorSection(),
      ],
    );
  }
}
