import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicapp/core/utls/app_router.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/widgets/custom_text_button.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_pass_text_feild.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_question_widget.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_text_feild.dart';

class DoctorSingUpViewBody extends StatelessWidget {
  const DoctorSingUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image.asset(
            AssetsData.kDoctorAut,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextFeild(
            text: 'Full Name',
            prefixIcon: Icon(Icons.person),
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomTextFeild(
            text: 'Email Address',
            prefixIcon: Icon(Icons.email),
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomTextFeild(
            text: 'Phone Number',
            prefixIcon: Icon(Icons.phone),
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomPassTextFeild(),
          const SizedBox(
            height: 40,
          ),
           CustomTextButton(
            text: 'Sing up',
            textColor: Colors.white,
            color: ColorData.kSecndoryColor,
          ),
           const SizedBox(
            height: 20,
          ),
          CustomQuestionWidget(
            text: 'Already have account?',
            text2: 'Login',
            textColor: ColorData.kSecndoryColor,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kDoctorLoginView);
            },
          ),
        ],
      ),
    );
  }
}
