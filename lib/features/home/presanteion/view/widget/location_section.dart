import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorData.kPrimaryColor.withOpacity(.1),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on,
                    color: ColorData.kPrimaryColor,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New York ,Mediacal Center',
                    style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'address line of the medical center,',
                    style: Styles.textStyle12.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
