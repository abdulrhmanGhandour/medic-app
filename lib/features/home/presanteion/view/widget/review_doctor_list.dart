import 'package:flutter/material.dart';
import 'package:medicapp/features/home/presanteion/view/widget/review_doctor_item.dart';

class ReviewDoctorListView extends StatelessWidget {
  const ReviewDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemBuilder: (context, index) {
              return const ReviewDoctorItem();
            },
          ),
        );
  }
}
