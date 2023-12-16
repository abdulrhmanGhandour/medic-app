import 'package:flutter/material.dart';
import 'package:medicapp/features/doctor%20home/presanteion/view/widgets/doctor_home_view_body.dart';

class DoctorHomeView extends StatelessWidget {
  const DoctorHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DoctorHomeViewBody(),
      ),
    );
  }
}
