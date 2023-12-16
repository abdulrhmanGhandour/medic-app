import 'package:flutter/material.dart';
import 'package:medicapp/features/doctor%20profile/presanteion/view/widget/custom_profile_app_bar.dart';
import 'package:medicapp/features/doctor%20profile/presanteion/view/widget/doctor_profile_info.dart';
import 'package:medicapp/features/doctor%20profile/presanteion/view/widget/profile_details.dart';
//import 'package:medicapp/core/utls/styles.dart';

class DoctorProfileViewBody extends StatelessWidget {
  const DoctorProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomDoctorProfileAppBar(),
          SizedBox(
            height: 20,
          ),
          ProfileInfo(),
            SizedBox(
            height: 40,
          ),
          ProfileDerailsSection(),
        ],
      ),
    );
  }
}
