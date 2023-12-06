import 'package:flutter/material.dart';
import 'package:medicapp/features/clinics/presanteion/view/widgets/clinics_view_body.dart';

class ClinicsView extends StatelessWidget {
  const ClinicsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ClinicsViewBody(),
    );
  }
}