import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/appoinment_action_bottum.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/date_time_state_widget.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/name_image_widget.dart';

class AboutDoctorItem extends StatelessWidget {
  const AboutDoctorItem({super.key, required this.doctors});

  final Doctors doctors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Doctor',
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: MediaQuery.of(context).size.height * .27,
              decoration: BoxDecoration(
                boxShadow: [boxShadow()],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AboutDoctorNameImageRow(
                      doctors: doctors,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 6),
                      child: Divider(
                        height: 1,
                        color: Colors.grey.withOpacity(.5),
                        thickness: 0.8,
                      ),
                    ),
                    const DateTimeStateWidget(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppoinmentAction(
                          text: 'Cancel',
                          color: ColorData.kWhiteColorFA,
                          textColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                       const AppoinmentAction(
                          text: 'Reschedule',
                          color: ColorData.kPrimaryColor,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
