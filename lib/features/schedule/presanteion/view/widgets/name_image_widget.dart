import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';

class AboutDoctorNameImageRow extends StatelessWidget {
  const AboutDoctorNameImageRow({super.key, required this.doctors});

  final Doctors doctors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doctors.name,
              style: Styles.textStyle18
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Therapist',
              style: Styles.textStyle14
                  .copyWith(color: Colors.black54, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(
            doctors.image,
          ),
        ),
      ],
    );
  }
}
