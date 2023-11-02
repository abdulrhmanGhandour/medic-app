import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';
import 'package:medicapp/features/home/presanteion/view/widget/appoinment_app_bar.dart';
import 'package:medicapp/features/home/presanteion/view/widget/contact_section.dart';
import 'package:medicapp/features/home/presanteion/view/widget/location_section.dart';
import 'package:medicapp/features/home/presanteion/view/widget/reviews_swction.dart';

class AppoinmentViewBody extends StatelessWidget {
  const AppoinmentViewBody({super.key, required this.doctors});

  final Doctors doctors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppoinmentAppBar(),
        ContactSection(doctors: doctors),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1.7,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Doctor',
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Lorem ipsum is simply dummy text of the priniting and typesetting industry.',
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
                ),
                const ReviewsSection(),
                const SizedBox(
                  height: 10,
                ),
                const LocationSection(),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}
