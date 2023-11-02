import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';
import 'package:medicapp/core/utls/widgets/rateing_doctor_widget.dart';

class ReviewDoctorItem extends StatelessWidget {
  const ReviewDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [boxShadow()],
        borderRadius: BorderRadius.circular(10),
      ),
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width * .6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(
                    AssetsData.kDoctor1Image,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr.Doctor Name',
                      style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(
                      '1 day ago',
                      style: Styles.textStyle12.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const CustomRateingDoctor(
                  rate: '4.9',
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Many thanks to Dr.Dear.He is a great and professional doctor',
              style: Styles.textStyle12,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
