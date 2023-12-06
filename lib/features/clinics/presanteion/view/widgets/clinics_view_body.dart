import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/widgets/custom_app_bar.dart';

class ClinicsViewBody extends StatelessWidget {
  const ClinicsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(image: AssetsData.kDoctor1Image, text: 'Hello Alex'),
      ],
    );
  }
}