import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';
import 'package:medicapp/features/home/presanteion/view/widget/custom_doctor_item.dart';

class PopularDoctorsSection extends StatelessWidget {
  const PopularDoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Doctors',
            style: Styles.textStyle20.copyWith(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
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
      ),
    );
  }
}

