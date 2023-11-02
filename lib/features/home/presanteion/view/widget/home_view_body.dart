import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/widgets/custom_app_bar.dart';
import 'package:medicapp/features/home/presanteion/view/widget/popular_doctors_section.dart';
import 'package:medicapp/features/home/presanteion/view/widget/symptoms_section.dart';
import 'package:medicapp/features/home/presanteion/view/widget/vist_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            image: AssetsData.kDoctor1Image,
            text: 'Hello Alex',
          ),
          VistSection(),
          SizedBox(
            height: 20,
          ),
          SymptomsSection(),
           SizedBox(
            height: 20,
          ),
          PopularDoctorsSection(),
        ],
      ),
    );
  }
}
