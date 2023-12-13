import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/widgets/custom_app_bar.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';
import 'package:medicapp/features/home/presanteion/view/widget/custom_doctor_item.dart';

class ClinicsViewBody extends StatelessWidget {
  const ClinicsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const CustomAppBar(image: AssetsData.kDoctor1Image, text: 'Hello Alex'),
         GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: dcctorsList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return CustomDoctorItem(doctors: dcctorsList[index]);
            },
          ),
      ],
    );
  }
}