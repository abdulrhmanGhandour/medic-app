import 'package:flutter/material.dart';
import 'package:medicapp/features/doctor%20profile/presanteion/view/widget/doctor_profile_view_body.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DoctorProfileViewBody(),
      ),
    );
  }
}
