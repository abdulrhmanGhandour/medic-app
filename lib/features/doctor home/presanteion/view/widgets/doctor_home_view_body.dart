import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicapp/core/utls/app_router.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/widgets/custom_app_bar.dart';
import 'package:medicapp/features/doctor%20home/presanteion/view/widgets/doctor_home_item.dart';

class DoctorHomeViewBody extends StatelessWidget {
  const DoctorHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(
            image: AssetsData.kDoctor2Image,
            text: 'Hello Doctor',
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DoctorHomeViewItem(
                  image: AssetsData.kDoctorAut,
                  text: 'Profile',
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kDoctorProfileView,
                    );
                  },
                ),
              
                 DoctorHomeViewItem(
                  image: AssetsData.kDoctorSchedule,
                  text: 'Schedule',
                  onTap: () {
                     GoRouter.of(context).push(
                      AppRouter.kDoctorScheduleView,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
