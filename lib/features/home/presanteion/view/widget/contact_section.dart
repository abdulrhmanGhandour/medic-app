import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/contact_widget.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key, required this.doctors});

  final Doctors doctors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
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
            style: Styles.textStyle20.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Therapist',
            style: Styles.textStyle14
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          const ContactWidget(),
        ],
      ),
    );
  }
}
