import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/rateing_doctor_widget.dart';
import 'package:medicapp/features/home/presanteion/view/widget/review_doctor_list.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              Text(
                'Reviews',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const CustomRateingDoctor(
                rate: '4.9',
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '(124)',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ColorData.kPrimaryColor,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.bold,
                    color: ColorData.kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        const ReviewDoctorListView(),
      ],
    );
  }
}
