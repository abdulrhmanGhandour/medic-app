import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_text_feild.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image.asset(
            AssetsData.kDoctorsImage,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFeild(),
        ],
      ),
    );
  }
}
