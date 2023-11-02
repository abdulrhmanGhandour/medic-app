import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicapp/core/utls/app_router.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';
import 'package:medicapp/core/utls/widgets/rateing_doctor_widget.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';

class CustomDoctorItem extends StatelessWidget {
  const CustomDoctorItem({super.key, required this.doctors });

final Doctors doctors ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kAppoinmentView,extra: doctors);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [boxShadow()],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 34,
                backgroundImage: AssetImage(
                  doctors.image,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                doctors.name,
                style: Styles.textStyle18.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text('Therapist', style: Styles.textStyle14),
              const CustomRateingDoctor(rate: '4.9'),
            ],
          ),
        ),
      ),
    );
  }
}
