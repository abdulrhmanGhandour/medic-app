import 'package:flutter/material.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/about_doctor_item.dart';

class AboutDoctorSection extends StatelessWidget {
  const AboutDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>  AboutDoctorItem(
        doctors: dcctorsList[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: dcctorsList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
