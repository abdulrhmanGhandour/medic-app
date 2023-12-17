import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/widgets/custom_app_bar.dart';
import 'package:medicapp/features/doctor%20schedule/presanteion/view/widgets/doctor_schedule_item.dart';

class DoctorScheduleViewBody extends StatelessWidget {
  const DoctorScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(image: AssetsData.kDoctor2Image, text: 'Schedule'),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            itemBuilder: (context, index) => const DoctorScheduleItem(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: 1,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
