import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medicapp/core/utls/app_router.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/widgets/custom_text_button.dart';
import 'package:medicapp/core/utls/widgets/show_snak_bar.dart';
import 'package:medicapp/features/Authentication/presanteion/manger/authentication%20cubit/authentication_cubit.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_question_widget.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/custom_text_feild.dart';

GlobalKey<FormState> formKey = GlobalKey();
String? password, email;

class DoctorLoginViewBody extends StatelessWidget {
  const DoctorLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is LoginLoding) {
        } else if (state is LoginSuccess) {
          showSnackBar(context, 'Success');
          GoRouter.of(context).push(AppRouter.kDoctorHomeView);
        } else if (state is LoginFailure) {
          showSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    AssetsData.kDoctorAut,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFeild(
                    text: 'Enter Email',
                    prefixIcon: const Icon(Icons.person),
                    onChanged: (data) {
                      email = data;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextFeild(
                    text: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    obscureText: true,
                    suffixIcon: const Icon(CupertinoIcons.eye_fill),
                    onChanged: (data) {
                      password = data;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextButton(
                    text: 'Login',
                    color: ColorData.kSecndoryColor,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                      BlocProvider.of<AuthenticationCubit>(context)
                          .loginUser(
                        email: email!,
                        password: password!,
                      );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomQuestionWidget(
                    text: 'Dont have any account?',
                    text2: 'Create Account',
                    textColor: ColorData.kSecndoryColor,
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kDoctorSingUpView);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
