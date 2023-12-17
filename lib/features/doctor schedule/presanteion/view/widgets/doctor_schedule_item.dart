import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';
import 'package:medicapp/core/utls/widgets/date_widget.dart';
import 'package:medicapp/core/utls/widgets/time_widget.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/appoinment_action_bottum.dart';

class DoctorScheduleItem extends StatelessWidget {
  const DoctorScheduleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Condition',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Name : Ahmed Mohmed ',
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'Mobile : +201258950 ',
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 6),
                      child: Divider(
                        height: 1,
                        color: Colors.grey.withOpacity(.5),
                        thickness: 0.8,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DateWidget(),
                        TimeWidget(),
                      ],
                    ),
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
                        AppoinmentAction(
                          text: 'Accept',
                          color: ColorData.kSecndoryColor,
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
