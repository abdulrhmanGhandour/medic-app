import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/widgets/custom_app_bar.dart';
import 'package:medicapp/features/clinics/data/clinics_model.dart';
import 'package:medicapp/features/clinics/presanteion/view/widgets/clinic_item.dart';

class ClinicsViewBody extends StatelessWidget {
  const ClinicsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            image: AssetsData.kDoctor1Image,
            text: 'Choose your clinic',
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: clinicsList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ClinicsItem(
                  clinics: clinicsList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
