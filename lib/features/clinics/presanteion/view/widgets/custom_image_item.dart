import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';
import 'package:medicapp/features/clinics/data/clinics_model.dart';

class CustomItemStakImage extends StatelessWidget {
  const CustomItemStakImage({
    super.key,
    required this.clinics,
  });

  final Clinics clinics;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [boxShadow()],
          color: Colors.white),
      child:  Image(
        image: AssetImage(clinics.image),
        fit: BoxFit.cover,
     // opacity: const AlwaysStoppedAnimation(.5),
        colorBlendMode: BlendMode.screen,
        color: ColorData.kPrimaryColor,
      ),
    );
  }
}
