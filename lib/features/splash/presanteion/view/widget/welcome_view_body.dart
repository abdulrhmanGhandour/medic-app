import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicapp/core/utls/app_router.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/custom_text_button.dart';
import 'package:medicapp/core/utls/widgets/nav_bar.dart';

class WelcomViewBody extends StatelessWidget {
  const WelcomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavBarRoots(),
                  ),
                );
              },
              child: Text(
                'Skip',
                style: Styles.textStyle20.copyWith(
                  color: ColorData.kPrimaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            AssetsData.kDoctorsImage,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Doctors Appointment',
            style: Styles.textStyle30.copyWith(
              color: ColorData.kPrimaryColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Appoint your doctor',
            style: Styles.textStyle18.copyWith(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextButton(
                text: 'Log in',
                color: ColorData.kPrimaryColor,
                textColor: Colors.white,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kLoginView);
                },
              ),
              CustomTextButton(
                text: 'Sign in',
                color: ColorData.kPrimaryColor,
                textColor: Colors.white,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kSingUpView);
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you Doctor?',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  
                },
                child: Text(
                  'login',
                  style: Styles.textStyle16.copyWith(
                    color: ColorData.kPrimaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
