import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/features/doctor%20profile/presanteion/view/widget/custom_details_text.dart';

class ProfileDerailsSection extends StatelessWidget {
  const ProfileDerailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile Details',
            style: Styles.textStyle20.copyWith(
              color: ColorData.kSecndoryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10, bottom: 20),
            child: Divider(
              height: 1,
              color: ColorData.kSecndoryColor,
              thickness: 2,
            ),
          ),
          const CustomDetailsText(
            text: 'Name: Nadia Abdulrhman',
          ),
           const CustomDetailsText(
            text: 'Specialization : Cardiology',
          ),
           const CustomDetailsText(
            text: 'Mobile : +2010894733',
          ),
           const CustomDetailsText(
            text: 'E-mail : NadiaAbdulrhman@gmail.com',
          ),
           const CustomDetailsText(
            text: 'Location : location',
          ),
        ],
      ),
    );
  }
}
