import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/features/home/presanteion/view/widget/custom_vist_item.dart';

class VistSection extends StatelessWidget {
  const VistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomVistItem(
          color: ColorData.kPrimaryColor,
          text: 'Clinic Visit',
          subText: 'Make an appolntment',
          textColor: Colors.white,
          subTextColor: Colors.grey[300],
          icon: const Icon(
            Icons.add_circle_outline,
            color: Colors.white,
          ),
        ),
       CustomVistItem(
          color :Colors.white,
          text: 'Home Visit',
          subText: 'call the doctor home',
          textColor: ColorData.kPrimaryColor,
          subTextColor: Colors.grey,
          icon:  Icon(
            Icons.home_rounded,
            color: ColorData.kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
