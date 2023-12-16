import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/styles.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(AssetsData.kDoctor2Image),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const Text(
          'Doctor Name',
          style: Styles.textStyle30,
        ),
        Text(
          'Cardiology',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
