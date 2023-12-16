import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';

class DoctorHomeViewItem extends StatelessWidget {
  const DoctorHomeViewItem(
      {super.key, this.onTap, required this.image, required this.text});

  final void Function()? onTap;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .23,
            width: MediaQuery.of(context).size.height * .22,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [boxShadow()],
                color: Colors.white),
            child: Image(
              image:  AssetImage(image),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.color,
              color: ColorData.kSecndoryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
