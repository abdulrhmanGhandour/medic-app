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

class DoctorSingUpViewBody extends StatelessWidget {
  const DoctorSingUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is RegisterLoding) {
        } else if (state is RegisterSuccess) {
          showSnackBar(context, 'Success');
          GoRouter.of(context).push(AppRouter.kDoctorHomeView);
        } else if (state is RegisterFailuer) {
          showSnackBar(context, state.errMesage);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
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
                CustomTextFeild(
                  text: 'Email Address',
                  prefixIcon: const Icon(Icons.email),
                  onChanged: (data) {
                    email = data;
                  },
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
                  text: 'Sing up',
                  color: ColorData.kSecndoryColor,
                  onTap: () {
                     if (formKey.currentState!.validate()) {
                      BlocProvider.of<AuthenticationCubit>(context)
                          .registerUser(
                        email: email!,
                        password: password!,
                      );
                    } else {}
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomQuestionWidget(
                  text: 'Already have account?',
                  text2: 'Login',
                  textColor: ColorData.kSecndoryColor,
                  onPressed: () 
                  {
                    GoRouter.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
