import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';

class ProfileDerailsSection extends StatelessWidget {
  const ProfileDerailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Profile Details',
          style: Styles.textStyle20.copyWith(
            color: ColorData.kSecndoryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
