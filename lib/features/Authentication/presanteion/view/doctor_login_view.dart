import 'package:flutter/material.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/doctor_login_view_body.dart';

class DoctorLoginView extends StatelessWidget {
  const DoctorLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DoctorLoginViewBody(),
      ),
    );
  }
}
