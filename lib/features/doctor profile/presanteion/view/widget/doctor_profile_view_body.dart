import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/widgets/custom_text_button.dart';
import 'package:medicapp/features/doctor%20profile/presanteion/view/widget/custom_profile_app_bar.dart';
import 'package:medicapp/features/doctor%20profile/presanteion/view/widget/doctor_profile_info.dart';
import 'package:medicapp/features/doctor%20profile/presanteion/view/widget/profile_details.dart';


class DoctorProfileViewBody extends StatelessWidget {
  const DoctorProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
          const  CustomDoctorProfileAppBar(),
           const SizedBox(
              height: 20,
            ),
          const  ProfileInfo(),
             const SizedBox(
              height: 40,
            ),
         const   ProfileDerailsSection(),
         const    SizedBox(height: 40,),
             CustomTextButton(text: 'Edit Profile', color: ColorData.kSecndoryColor),
          ],
        ),
      ),
    );
  }
}
