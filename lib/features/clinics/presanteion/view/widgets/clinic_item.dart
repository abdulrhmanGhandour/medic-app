import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicapp/core/utls/app_router.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/features/clinics/data/clinics_model.dart';
import 'package:medicapp/features/clinics/presanteion/view/widgets/custom_image_item.dart';

class ClinicsItem extends StatelessWidget {
  const ClinicsItem({
    super.key,
    required this.clinics,
  });

  final Clinics clinics;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kHomeView,
        );
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomItemImage(
            clinics: clinics,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              clinics.name,
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.bold,
               color: Colors.black54
              ),
            ),
          ),
        ],
      ),
    );
  }
}
