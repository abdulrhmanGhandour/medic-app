import 'package:flutter/material.dart';
import 'package:medicapp/features/Authentication/presanteion/view/widgets/sing_up_view_body.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingUpViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
