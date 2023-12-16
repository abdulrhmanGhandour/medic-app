import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicapp/core/utls/app_router.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/widgets/custom_text_button.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_pass_text_feild.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_question_widget.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_text_feild.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AssetsData.kDoctorsImage,
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFeild(
              text: 'Enter Username',
              prefixIcon: Icon(Icons.person),
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomPassTextFeild(),
            const SizedBox(
              height: 40,
            ),
          const  CustomTextButton(
              text: 'Login',
             
              color: ColorData.kPrimaryColor,
            ),
             CustomQuestionWidget(
              text: 'Dont have any account?',
              text2: 'Create Account',
              onPressed: () {
                 GoRouter.of(context).push(AppRouter.kSingUpView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
